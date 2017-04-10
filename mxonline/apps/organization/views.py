# coding:utf8
from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponse
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

from .models import CourseOrg, CityDict,Teacher
from .forms import UserAskForm
from courses.models import Course
from operation.models import UserFavorite


class OrgView(View):
    """
        课程机构列表功能
    """

    def get(self, request):
        """ 课程机构 """
        all_orgs = CourseOrg.objects.all()

        ''' 热门机构排名 '''
        hot_orgs = all_orgs.order_by("-click_nums")[:3]  # 根据点击量进行倒叙排列

        # 城市
        all_citys = CityDict.objects.all()

        # 取出筛选城市
        city_id = request.GET.get('city', '')
        if city_id:
            ''' 进一步进行筛选 '''
            all_orgs = all_orgs.filter(city_id=int(city_id))

        # 类别筛选
        category = request.GET.get('ct', '')
        if category:
            ''' 进一步进行筛选 '''
            all_orgs = all_orgs.filter(category=category)

        # 排序
        sort = request.GET.get('ct', '')
        if sort:
            if sort == "students":
                all_orgs = all_orgs.order_by("-students")
            elif sort == "courses":
                all_orgs = all_orgs.order_by("-course_nums")

        org_nums = all_orgs.count()

        # 对课程机构分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_orgs, 3, request=request)

        orgs = p.page(page)

        return render(request, "org_list.html", {
            "all_orgs": orgs,
            "all_citys": all_citys,
            "org_nums": org_nums,
            "city_id": city_id,  # city_id 进行筛选
            'category': category,
            'hot_orgs': hot_orgs,
            'sort': sort,
        })


class AddUserAskView(View):
    """  用户添加咨询 """

    def post(self, request):
        userask_form = UserAskForm(request.POST)
        # 是否通过检查,
        if userask_form.is_valid():
            # mobile =  request.POST.get('mobile', '')
            user_ask = userask_form.save(commit=True)
            return HttpResponse("{'status': 'success'}", content_type='application/json')
        else:
            return HttpResponse("{'status': 'fail', 'msg': '添加出错'}",
                                content_type='application/json')


class OrgHomeView(View):
    """
        机构首页
    """

    def get(self, request, org_id):
        current_page = "home"
        coures_org = CourseOrg.objects.get(id=int(org_id))
        # 用户是否已经点击收藏
        has_fav = False
        if request.user.is_authenticated():
            ''' 判断流程 用户是否已经登录 '''
            if UserFavorite.objects.filter(user=request.user, fav_id=coures_org.id, fav_type=2):
                """ 再判断是否已经收藏 有结果集返回则表示已经收藏"""
                has_fav = True
        all_courses = coures_org.course_set.all()[:3]  # 通过外键 反向获取course（课程）取3个
        all_teachers = coures_org.teacher_set.all()[:3]
        return render(request, 'org-detail-homepage.html', {
            'all_courses': all_courses,
            'all_teachers': all_teachers,
            'coures_org': coures_org,
            'current_page': current_page,
            'has_fav': has_fav,
        })


class OrgCourseView(View):
    """
        机构课程列表页
    """

    def get(self, request, org_id):
        current_page = "course"
        coures_org = CourseOrg.objects.get(id=int(org_id))
        has_fav = False
        if request.user.is_authenticated():
            ''' 判断流程 用户是否已经登录 '''
            if UserFavorite.objects.filter(user=request.user, fav_id=coures_org.id, fav_type=2):
                """ 再判断是否已经收藏 有结果集返回则表示已经收藏"""
                has_fav = True
        all_courses = coures_org.course_set.all()  # 通过外键 反向获取course（课程）取3个
        return render(request, 'org-detail-course.html', {
            'all_courses': all_courses,
            'coures_org': coures_org,
            'current_page': current_page,
            'has_fav': has_fav,
        })


class OrgDescView(View):
    """
        机构介绍
    """

    def get(self, request, org_id):
        current_page = "desc"
        coures_org = CourseOrg.objects.get(id=int(org_id))
        has_fav = False
        if request.user.is_authenticated():
            ''' 判断流程 用户是否已经登录 '''
            if UserFavorite.objects.filter(user=request.user, fav_id=coures_org.id, fav_type=2):
                """ 再判断是否已经收藏 有结果集返回则表示已经收藏"""
                has_fav = True
        return render(request, 'org-detail-desc.html', {
            'coures_org': coures_org,
            'current_page': current_page,
            'has_fav': has_fav,
        })


class OrgTeacherView(View):
    """
        机构教师列表页面
    """

    def get(self, request, org_id):
        current_page = "teacher"
        coures_org = CourseOrg.objects.get(id=int(org_id))
        has_fav = False
        if request.user.is_authenticated():
            ''' 判断流程 用户是否已经登录 '''
            if UserFavorite.objects.filter(user=request.user, fav_id=coures_org.id, fav_type=2):
                """ 再判断是否已经收藏 有结果集返回则表示已经收藏"""
                has_fav = True
        all_teachers = coures_org.teacher_set.all()  # 通过外键 反向获取
        return render(request, 'org-detail-teachers.html', {
            'all_teachers': all_teachers,
            'coures_org': coures_org,
            'current_page': current_page,
            'has_fav': has_fav,
        })


# 用户收藏 用户取消收藏
class AddFavView(View):
    def post(self, request):
        fav_id = request.POST.get('fav_id', 0)
        fav_type = request.POST.get('fav_type', 0)

        if not request.user.is_authenticated():
            # is_authenticated 判断用户是否登陆
            return HttpResponse("{'status': 'fail', 'msg': '用户未登录'}",
                                content_type='application/json')
        # 查询记录是否存在 (当前操作的用户， fav_id , fav_type 两种状态 确定)
        exist_records = UserFavorite.objects.filter(user=request.user, fav_id=int(fav_id), fav_type=int(fav_type))
        if exist_records:
            # 如果记录已经存在，则收藏取消
            exist_records.delete()
            return HttpResponse("{'status': 'success', 'msg': '收藏'}",
                                content_type='application/json')
        else:
            user_fav = UserFavorite()
            if int(fav_id) > 0 and int(fav_type) > 0:
                user_fav.user = request.user
                user_fav.fav_id = int(fav_id)
                user_fav.fav_type = int(fav_type)
                user_fav.save()
                return HttpResponse("{'status': 'success', 'msg': '已收藏'}",
                                    content_type='application/json')
            else:
                return HttpResponse("{'status': 'fail', 'msg': '收藏出错'}",
                                    content_type='application/json')


# 课程讲师列表页
class TeacherListView(View):
    def get(self, request, ):
        all_teachers = Teacher.objects.all()


        current_nav = 'teacher'
        # 热门排序
        sort = request.GET.get('sort', '')
        if sort:
            if sort == "hot":
                all_teachers = all_teachers.order_by("-click_nums")  # 根据点击量倒序
                # elif sort == "courses":
                #     all_teachers = all_teachers.order_by("-course_nums")

        # 讲师排序 找出所有的讲师然后进行排序
        sorted_teacher = Teacher.objects.all().order_by("-click_nums")[:3]

        # 对讲师分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_teachers, 1, request=request)

        teachers = p.page(page)
        return render(request, "teachers-list.html", {
            "all_teachers": teachers,
            "sorted_teacher": sorted_teacher,
            "sort": sort,
            "current_nav": current_nav,

        })


# 课程讲师详情页
class TeacherDetailView(View):
    def get(self, request, teacher_id):
        # 找出老师的个人信息
        teacher = Teacher.objects.get(id=int(teacher_id))
        # 找出老师的课程
        all_courses = Course.objects.filter(teacher=teacher)

        has_teacher_faved = False
        if UserFavorite.objects.filter(user=request.user, fav_type=3, fav_id=teacher.id):
            has_teacher_faved = True

        has_org_faved = False
        if UserFavorite.objects.filter(user=request.user, fav_type=2, fav_id=teacher.org.id):
            has_org_faved = True


        # 讲师排行榜
        sorted_teacher = Teacher.objects.all().order_by("-click_nums")[:3]
        return render(request, "teacher-detail.html", {
            "teacher": teacher,
            "all_courses": all_courses,
            "sorted_teacher": sorted_teacher,
            "has_teacher_faved": has_teacher_faved,
            "has_org_faved": has_org_faved,

        })
