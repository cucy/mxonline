# coding:utf8
from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password
from .models import UserProfile, EmailVerifyRecord
from .forms import LoginForm, RegisterForm, ForgetForm, ModifyPwdForm
from utils.email_send import send_register_email


#   authenticate user validata
#  Create your views here.


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
        return render(request, "forgetpwd.html", {"forget_form":forget_form})

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
                return render(request, "password_reset.html", {"email": email} )
        else:
            return render(request, "active_faill.html", )
        return render(request, "login.html", )


class ModifyPwdView(View):

    def post(self,request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            email = request.POST.get("email", "")
            if pwd1 != pwd2:
                return render(request, "password_reset.html", {"email": email, "msg": "密码不一致" })

            user = UserProfile.objects.get(email=email)
            user.password = make_password(pwd1)
            user.save()
            return render(request, "login.html", )
        else:
            email = request.POST.get("email", "")
            return render(request, "password_reset.html", {"email": email, "modify_form": modify_form})

