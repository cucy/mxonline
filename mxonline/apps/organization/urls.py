#!/usr/bin/env python
# -- coding: utf-8 --
# Time: 2017/4/6 11:22
# Author: zhourudong
from django.conf.urls import url, include
from .views import OrgView, AddUserAskView


urlpatterns = [
    # 课程机构列表页
    url(r'^list/$', OrgView.as_view(), name="org_list"),
    url(r'^add_ask/$', AddUserAskView.as_view(), name="add_ask"),
]