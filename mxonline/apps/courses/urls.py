#!/usr/bin/env python
# -- coding: utf-8 --
# Time: 2017/4/7 14:43
# Author: zhourudong

from django.conf.urls import url, include
from .views import CourseListView, CourseDetailView,CourseInfolView, CourseCommentView, AddCommentView, VideoPlayView


urlpatterns = [
    # 课程列表页
    url(r'^list/$', CourseListView.as_view(), name="course_list"),
    # 课程详情页
    url(r'^detail/(?P<course_id>\d+)/$', CourseDetailView.as_view(), name="course_detail"),

    url(r'^info/(?P<course_id>\d+)/$', CourseInfolView.as_view(), name="course_info"),
    # 课程评论
    url(r'^comment/(?P<course_id>\d+)/$', CourseCommentView.as_view(), name="course_comment"),
    # 添加课程评论
    url(r'^add_comment/$', AddCommentView.as_view(), name="add_comment"),

# 课程详情页
    url(r'^video/(?P<video_id>\d+)/$', VideoPlayView.as_view(), name="video_play"),
]