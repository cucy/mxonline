#!/usr/bin/env python
# _*_ coding:utf8 _*_
__date__ = '2017/4/2 10:27'
__author__ = 'zhourudong'

from .models import Course, Lesson, Video, CourseResource, BannerCourse
from organization.models import CourseOrg

import xadmin


class LessonInline(object):
    # 链式添加内容
    model= Lesson
    extra = 0


class CourseResourceInline(object):
    # 链式添加内容
    model = CourseResource
    extra = 0


class CourseAdmin(object):
    list_display = ( #'get_zj_nums', # 函数也和字段一样可以指定
                     #'go_to', # 自定义的a链接
                    'name', 'desc', 'detail', 'degree',
                     'learn_times', "students",
                     "fav_nums", "image", "click_nums", "add_time")
    search_fields = ('name', 'desc', 'detail', 'degree', "students", "fav_nums", "image", "click_nums",)
    list_filter = (
        'name', 'desc', 'detail', 'degree', 'learn_times', "students", "fav_nums", "image", "click_nums", "add_time")

    # 在列表页字段可以直接修改
    list_editable = ["degree", "desc"]

    # 只能一层嵌套  无法两层嵌套（课程--》章节） （无法实现 课程--》章节--》视频）
    inlines = [LessonInline, CourseResourceInline]

    def queryset(self):
        qs = super(CourseAdmin, self).queryset()
        qs = qs.filter(is_banner=False )
        # 只会显示指定的数据 is_banner = true
        return qs

    refresh_times = [3 , 5] # 可选 3 ， 5秒刷新

    def save_models(self):
        # 在保存课程时候统计课程机构的课程数
        obj = self.new_obj
        obj.save()
        if obj.course_org is not None:
            course_org = obj.course_org
            course_org.course_nums = Course.objects.filter(course_org=course_org).count()
            course_org.save()


    # # 自定义以某字段来排序
    # ordering = ["-click_nums"]
    #
    # #  设定字段为只读
    # readonly_fields = ["click_nums","students" ]
    #
    # # 指定不显示某些字段 (readonly_fields里设置了 以下不要在设置 否则冲突)
    # exclude = ["degree"]
    #
    # # CourseOrgAdmin 需要在它的外键设置（这是需要点击出现下拉效果的部分）


class BannerCourseAdmin(object):
    list_display = (
        'name', 'desc', 'detail', 'degree', 'learn_times', "students", "fav_nums", "image", "click_nums", "add_time")
    search_fields = ('name', 'desc', 'detail', 'degree', "students", "fav_nums", "image", "click_nums",)
    list_filter = (
        'name', 'desc', 'detail', 'degree', 'learn_times', "students", "fav_nums", "image", "click_nums", "add_time")

    def queryset(self):
        qs = super(BannerCourseAdmin, self).queryset()
        qs = qs.filter(is_banner=True )
        # 只会显示指定的数据 is_banner = true
        return qs



class LessonAdmin(object):
    list_display = ('course', 'name', 'add_time')
    search_fields = ('course', 'name',)
    list_filter = ('course__name', 'name', 'add_time')


class VideoAdmin(object):
    list_display = ('lesson', 'name', 'add_time')
    search_fields = ('lesson', 'name',)
    list_filter = ('lesson', 'name', 'add_time')


class CourseResourceAdmin(object):
    list_display = ('course', 'name', 'download', 'add_time')
    search_fields = ('course', 'name', 'download',)
    list_filter = ('course', 'name', 'download', 'add_time')


xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(BannerCourse, BannerCourseAdmin)
xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)
