# coding:utf8
from django.shortcuts import render
from django.views.generic.base import View
from .models import Course, CourseResource
# 分页攻能
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from operation.models import UserFavorite

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


class CourseDetailView(View):
    # 课程详情页
    def get(self, request, course_id):
        course = Course.objects.get(id=course_id)
        #  添加课程的点击数
        course.click_nums += 1
        course.save()

        # 课程相关推荐
        tag = course.tag
        if tag:
            relate_courses = Course.objects.filter(tag=tag)[:1]
        else:
            # if null  防止template中for出错
            relate_courses = []

        # 已收藏
        has_fav_course = False
        has_fav_org = False
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course.id, fav_type=1):
                has_fav_course = True
            if UserFavorite.objects.filter(user=request.user, fav_id=course.course_org.id, fav_type=2):
                has_fav_org = True

        return render(request, 'course-detail.html',{
            'course':course,
            'relate_courses':relate_courses,
            'has_fav_course':has_fav_course,
            'has_fav_org':has_fav_org,
        })



class CourseInfolView(View):
    # 课程章节信息
    def get(self, request, course_id):
        course = Course.objects.get(id=course_id)
        #  获取课程资源
        all_resources = CourseResource.objects.filter(course=course)

        return render(request, 'course-video.html',{
            'course':course,
            'all_resources':all_resources,

        })