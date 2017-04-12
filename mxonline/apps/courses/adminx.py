#!/usr/bin/env python
# _*_ coding:utf8 _*_
__date__ = '2017/4/2 10:27'
__author__ = 'zhourudong'

from .models import Course, Lesson, Video, CourseResource


import xadmin


class CourseAdmin(object):
    list_display = (
        'name', 'desc', 'detail', 'degree', 'learn_times', "students", "fav_nums", "image", "click_nums", "add_time")
    search_fields = ('name', 'desc', 'detail', 'degree', "students", "fav_nums", "image", "click_nums",)
    list_filter = (
        'name', 'desc', 'detail', 'degree', 'learn_times', "students", "fav_nums", "image", "click_nums", "add_time")

    # 自定义以某字段来排序
    ordering = ["-click_nums"]

    #  设定字段为只读
    readonly_fields = ["click_nums","students" ]

    # 指定不显示某些字段 (readonly_fields里设置了 以下不要在设置 否则冲突)
    exclude = ["detail"]

    # CourseOrgAdmin 需要在它的外键设置（这是需要点击出现下拉效果的部分）


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
xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)
