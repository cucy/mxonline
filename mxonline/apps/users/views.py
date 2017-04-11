# coding:utf8
import json
from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from django.http import HttpResponse

from .models import UserProfile, EmailVerifyRecord
from .forms import LoginForm, RegisterForm, ForgetForm, ModifyPwdForm, UloadImageForm, UloadInfoForm
from utils.email_send import send_register_email
from utils.mixin_utils import LoginRequiredMixin
from operation.models import UserCourse, UserFavorite
from organization.models import CourseOrg, Teacher
from  courses.models import Course


class CustomBackend(ModelBackend):
    """ 认证类型 """

    def authenticate(self, username=None, password=None, **kwargs):
        try:
            # 并集操作| 交集操作,
            print(username, "------------------------")
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            # 传入明文进行对比
            if user.check_password(password):
                return user
        except Exception as e:
            print(e)
            return None


class LoginView(View):
    def get(self, request):
        register_form = RegisterForm()
        return render(request, "login.html", {"register_form": register_form})

    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user_name = request.POST.get("username", "")
            pass_word = request.POST.get("password", "")

            user = authenticate(username=user_name, password=pass_word)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return render(request, "index.html")
                else:
                    return render(request, "login.html", {"msg": "用户名未激活", })
            else:
                return render(request, "login.html", {"msg": "用户名或密码错误", })
        else:
            return render(request, "login.html", {"login_form": login_form})


class RegisterView(View):
    def get(self, request):
        return render(request, "register.html")

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            user_name = request.POST.get("email", "")
            if UserProfile.objects.filter(email=user_name):
                return render(request, "register.html", {"register_form": register_form, "msg": "用户已被注册"})
            pass_word = request.POST.get("password", "")
            user_profile = UserProfile()
            user_profile.username = user_name
            user_profile.email = user_name
            """ 用户未激活,设置为False， 用户点击激活链接以后才激活帐户 """
            user_profile.is_active = False
            """ 加密密文 """
            user_profile.password = make_password(pass_word)
            user_profile.save()

            """ 调用函数发送邮件 """
            # 注册类型
            send_register_email(user_name, "register")
            return render(request, "login.html", )
        else:
            return render(request, "register.html", {"register_form": register_form})


class ActiveUserView(View):
    """ 激活用户"""

    def get(self, request, active_code):
        all_record = EmailVerifyRecord.objects.filter(code=active_code)
        if all_record:
            for record in all_record:
                email = record.email
                """ 通过邮箱反查找用户  """
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()
        else:
            return render(request, "active_faill.html", )
        return render(request, "login.html", )


class ForgetPwdView(View):
    def get(self, request):
        forget_form = ForgetForm()
        return render(request, "forgetpwd.html", {"forget_form": forget_form})

    def post(self, request):
        forget_form = ForgetForm(request.POST)
        """ 验证表单是否合法,如果表单合法则进行下一步 """
        if forget_form.is_valid():
            email = request.POST.get("email", "")
            send_register_email(email, "forget")
            return render(request, "send_sucess.html")
        else:
            return render(request, "forgetpwd.html", {"forget_form": forget_form})


class RestView(View):
    """ 找回密码"""

    def get(self, request, active_code):
        all_record = EmailVerifyRecord.objects.filter(code=active_code)
        if all_record:
            for record in all_record:
                email = record.email
                """ 通过邮箱反查找用户,查找到用户则返回给用户一个页面书写重置密码  """
                return render(request, "password_reset.html", {"email": email})
        else:
            return render(request, "active_faill.html", )
        return render(request, "login.html", )


# 修改用户密码
class ModifyPwdView(View):
    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            email = request.POST.get("email", "")
            if pwd1 != pwd2:
                return render(request, "password_reset.html", {"email": email, "msg": "密码不一致"})

            user = UserProfile.objects.get(email=email)
            user.password = make_password(pwd1)
            user.save()
            return render(request, "login.html", )
        else:
            email = request.POST.get("email", "")
            return render(request, "password_reset.html", {"email": email, "modify_form": modify_form})


# 用户个人信息VIEW
class UserInfoView(LoginRequiredMixin, View):
    # 必须登入才能访问
    def get(self, request):
        return render(request, 'usercenter-info.html', {

        })

    def post(self, request):
        # 如果不指定 instance 则会新增加一个用户
        user_info_form = UloadInfoForm(request.POST, instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return HttpResponse("{'status': 'success'}",
                                content_type='application/json')
        else:
            return HttpResponse(json.dumps(user_info_form.errors),
                                content_type='application/json')


# 用户头像修改View
class UploadImageView(LoginRequiredMixin, View):
    def post(self, request):
        # 实例化传入的是request , 第二参数(因为上传文件是放在request.FILES请求中，所以需要传入第二个参数)
        '''
        image_form = UloadImageForm(request.POST, request.FILES)
        if image_form.is_valid():
        第一种方法
            # 验证通过的from会放进cleaned_data中
            image = image_form.cleaned_data['image']
            request.user.image =  image
            request.user.save()
            pass 
        '''

        image_form = UloadImageForm(request.POST, request.FILES, instance=request.user)
        if image_form.is_valid():
            image_form.save()
            # 返回json数据
            return HttpResponse("{'status': 'success'}", content_type='application/json')
        else:
            return HttpResponse("{'status': 'fail'}", content_type='application/json')


# 在个人中心修改用户密码
class UpdatePwdView(View):
    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            # email = request.POST.get("email", "") 不需要email因为用户已经登入
            if pwd1 != pwd2:
                return HttpResponse("{ 'status':'fail', 'msg ':  '密码不一致 ' }",
                                    content_type='application/json')

            user = request.user
            user.password = make_password(pwd1)  # 加密
            user.save()
            return HttpResponse("{'status': 'success'}",
                                content_type='application/json')
        else:
            return HttpResponse(json.dumps(modify_form.errors),
                                content_type='application/json')


# 发送邮箱验证码
class SendEmailCodeView(LoginRequiredMixin, View):
    def get(self, request):
        email = request.GET.get('email', '')
        if UserProfile.objects.filter(email=email):
            return HttpResponse("{  'email ':  '邮箱已被注册 ' }",
                                content_type='application/json')

        """ 调用函数发送邮件 """
        # 发送邮箱验证码
        send_register_email(email, "update_email")
        return HttpResponse("{  'status ':  'success ' }",
                            content_type='application/json')


# 修改个人邮箱
class UpdateEmailView(LoginRequiredMixin, View):
    def post(self, request):
        email = request.POST.get('email', '')
        code = request.POST.get('code', '')

        # 验证 验证码是否合法
        existed_records = EmailVerifyRecord.objects.filter(email=email, code=code, send_type='update_email')
        if existed_records:
            user = request.user
            user.email = email
            user.save()
            return HttpResponse("{  'status ':  'success' }",
                                content_type='application/json')
        else:
            return HttpResponse("{  'email ':  '验证码出错 ' }",
                                content_type='application/json')


# 我的课程
class MyCourseView(LoginRequiredMixin, View):
    def get(self, request):
        user_courses = UserCourse.objects.filter(user=request.user)

        return render(request, "usercenter-mycourse.html", {
            "user_courses": user_courses,

        })


# 我收藏的课程机构
class MyFavOrgView(LoginRequiredMixin, View):
    def get(self, request):
        org_list = []
        # 因为只是存放的是外键 所以需要进一步取出机构名
        fav_orgs = UserFavorite.objects.filter(user=request.user, fav_type=2)
        for fav_org in fav_orgs:
            org_id = fav_org.fav_id
            # 取出课程机构
            org = CourseOrg.objects.get(id=org_id)
            org_list.append(org)

        return render(request, "usercenter-fav-org.html", {
            "org_list": org_list,

        })


# 我收藏的授课讲师
class MyFavTeacherView(LoginRequiredMixin, View):
    def get(self, request):
        teacher_list = []
        # 因为只是存放的是外键 所以需要进一步取出机构名
        fav_teachers = UserFavorite.objects.filter(user=request.user, fav_type=3)
        for fav_teacher in fav_teachers:
            teacher_id = fav_teacher.fav_id
            # 取出teacher
            teacher = Teacher.objects.get(id=teacher_id)
            teacher_list.append(teacher)

        return render(request, "usercenter-fav-teacher.html", {
            "teacher_list": teacher_list,

        })



# 我收藏的公开课
class MyFavCoursView(LoginRequiredMixin, View):
    def get(self, request):
        course_list = []
        # 因为只是存放的是外键 所以需要进一步取出机构名
        fav_courses = UserFavorite.objects.filter(user=request.user, fav_type=1)
        for fav_course in fav_courses:
            course_id = fav_course.fav_id
            # 取出course
            course = Course.objects.get(id=course_id)
            course_list.append(course)

        return render(request, "usercenter-fav-course.html", {
            "course_list": course_list,

        })
