#!/usr/bin/env python
# -- coding: utf-8 --
# Time: 2017/4/7 14:43
# Author: zhourudong

from django.conf.urls import url, include
from .views import CourseListView, CourseDetailView,CourseInfolView


urlpatterns = [
    # 课程列表页
    url(r'^list/$', CourseListView.as_view(), name="course_list"),
    # 课程详情页
    url(r'^detail/(?P<course_id>\d+)/$', CourseDetailView.as_view(), name="course_detail"),

    url(r'^info/(?P<course_id>\d+)/$', CourseInfolView.as_view(), name="course_info"),
]