# coding:utf8
from django.shortcuts import render
from django.views.generic.base import View
from .models import Course
# 分页攻能
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


# 课程列表页视图
class CourseListView(View):
    def get(self, request):

        all_courses = Course.objects.all().order_by("-add_time")
        # 默认按最新的进行排列

        hot_courses = Course.objects.all().order_by('-click_nums')[:3]
        # 课程排序(最热门)
        sort = request.GET.get('sort', '')
        if sort:
            if sort == "students":
                # 学习人数
                all_courses = all_courses.order_by("-students")
            elif sort == "hot":
                # 点击数量
                all_courses = all_courses.order_by("-click_nums")

        # 对课程分页start
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_courses, 3, request=request)  # 对哪个对象进行分页 一页几个对象

        courses = p.page(page)
        # 对课程分页end

        return render(request, 'course-list.html', {
            #  传入的是已分页对象courses
            'all_courses': courses,
            'sort': sort,
            'hot_courses': hot_courses,
        })
