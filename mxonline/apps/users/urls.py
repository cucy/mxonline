#!/usr/bin/env python
# -- coding: utf-8 --
# Time: 2017/4/11 13:24
# Author: zhourudong

from django.conf.urls import url, include
from .views import UserInfoView
urlpatterns = [
    # 用户信息
    url(r'^info/$', UserInfoView.as_view(), name="user_info"),

]