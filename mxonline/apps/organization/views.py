# coding:utf8
from django.shortcuts import render
from django.views.generic import View
from django.http import HttpResponse
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

from .models import CourseOrg, CityDict
from .forms import UserAskForm
from courses.models import Course

# Create your views here.


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
        all_courses = coures_org.course_set.all()[:3]  # 通过外键 反向获取course（课程）取3个
        all_teachers = coures_org.teacher_set.all() [:3]
        return render(request, 'org-detail-homepage.html', {
            'all_courses': all_courses,
            'all_teachers': all_teachers,
            'coures_org': coures_org,
            'current_page': current_page,
        })


class OrgCourseView(View):
    """
        机构课程列表页
    """
    def get(self, request, org_id):
        current_page = "course"
        coures_org = CourseOrg.objects.get(id=int(org_id))
        all_courses = coures_org.course_set.all()  # 通过外键 反向获取course（课程）取3个
        return render(request, 'org-detail-course.html', {
            'all_courses': all_courses,
            'coures_org': coures_org,
            'current_page': current_page,
        })