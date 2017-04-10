# coding:utf8
from django.shortcuts import render
from django.views.generic.base import View
from .models import Course, CourseResource, Video
from django.http import HttpResponse
from utils.mixin_utils import LoginRequiredMixin
from django.db.models import Q
# 分页攻能
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from operation.models import UserFavorite, CourseComments, UserCourse


# 课程列表页视图
class CourseListView(View):
    def get(self, request):

        all_courses = Course.objects.all().order_by("-add_time")
        # 默认按最新的进行排列

        # 课程关键词搜索
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            # i的意思是不区分大小写  类似lisk   Q()|Q() 为or操作
            all_courses = Course.filter(Q(name__icontains=search_keywords)|
                                                Q(desc__icontains=search_keywords)|
                                                Q(detail__icontains=search_keywords))



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


class VideoPlayView(View):
    """
    视频播放页面
    """
    def get(self, request, video_id):
        video = Video.objects.get(id=int(video_id))
        course = video.lesson.course
        course.students += 1
        course.save()
        # 查询用户是否关联了该课程
        user_courses = UserCourse.objects.filter(user=request.user, course=course)
        if not user_courses:
            user_courses = UserCourse(user=request.user, course=course)
            user_courses.save()

        user_courses = UserCourse.objects.filter(course=course)
        user_ids = [user_course.user.id for user_course in user_courses]

        #  获取课程资源
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [user_course.course.id for user_course in all_user_courses]
        # 获取学过该用户的其他所有课程
        relate_courses = Course.objects.filter(id__in=course_ids).order_by("-click_nums")[:5]
        all_resources = CourseResource.objects.filter(course=course)

        return render(request, 'course-play.html', {
            'course': course,
            'all_resources': all_resources,
            'relate_courses': relate_courses,
            'video': video,

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

        return render(request, 'course-detail.html', {
            'course': course,
            'relate_courses': relate_courses,
            'has_fav_course': has_fav_course,
            'has_fav_org': has_fav_org,
        })


class CourseInfolView(LoginRequiredMixin,View):
    # 课程章节信息
    def get(self, request, course_id):
        course = Course.objects.get(id=int(course_id))
        course.students += 1
        course.save()
        # 查询用户是否关联了该课程
        user_courses = UserCourse.objects.filter(user=request.user, course=course)
        if not user_courses:
            user_courses = UserCourse(user=request.user, course=course)
            user_courses.save()

        user_courses = UserCourse.objects.filter(course=course)
        user_ids = [user_course.user.id for user_course in user_courses]

        #  获取课程资源
        all_user_courses = UserCourse.objects.filter(user_id__in=user_ids)
        # 取出所有课程id
        course_ids = [user_course.course.id for user_course in all_user_courses]
        # 获取学过该用户的其他所有课程
        relate_courses = Course.objects.filter(id__in=course_ids).order_by("-click_nums")[:5]
        all_resources = CourseResource.objects.filter(course=course)

        return render(request, 'course-video.html', {
            'course': course,
            'all_resources': all_resources,
            'relate_courses': relate_courses,

        })


# 评论页面
class CourseCommentView(LoginRequiredMixin, View):
    def get(self, request, course_id):
        course = Course.objects.get(id=course_id)
        #  获取课程资源
        all_resources = CourseResource.objects.filter(course=course)
        all_comments = CourseComments.objects.all()

        return render(request, 'course-comment.html', {
            'course': course,
            'all_resources': all_resources,
            'all_comments': all_comments,

        })


# 用户添加评论
class AddCommentView(View):
    def post(self, request):
        if not request.user.is_authenticated():
            # is_authenticated 判断用户是否登陆
            return HttpResponse("{'status': 'fail', 'msg': '用户未登录'}",
                                content_type='application/json')

        course_id = request.POST.get('course_id', 0)
        comments = request.POST.get('comments', '')
        if course_id > 0 and comments:
            course_comments = CourseComments()
            course = Course.objects.get(id=int(course_id))
            course_comments.course = course
            course_comments.comments = comments
            course_comments.user = request.user  # 那个用户评论的
            course_comments.save()
            return HttpResponse("{'status': 'success', 'msg': '添加成功'}",
                                content_type='application/json')
        else:
            return HttpResponse("{'status': 'fail', 'msg': '添加评论失败'}",
                                content_type='application/json')
