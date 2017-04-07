#!/usr/bin/env python
# -- coding: utf-8 --
# Time: 2017/4/7 14:43
# Author: zhourudong

from django.conf.urls import url, include
from .views import CourseListView


urlpatterns = [
    # 课程列表页
    url(r'^list/$', CourseListView.as_view(), name="course_list"),

]