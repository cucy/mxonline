#!/usr/bin/env python
# -- coding: utf-8 --
# Time: 2017/4/11 13:24
# Author: zhourudong

from django.conf.urls import url, include
from .views import UserInfoView, UploadImageView, UpdatePwdView
from .views import SendEmailCodeView, UpdateEmailView, MyCourseView, MyFavOrgView

urlpatterns = [
    # 用户个人中心信息
    url(r'^info/$', UserInfoView.as_view(), name="user_info"),

    # 用户个人中心头像上传
    url(r'^image/upload/$', UploadImageView.as_view(), name="image_upload"),

    # 用户个人中心修改密码
    url(r'^update/pwd/$', UpdatePwdView.as_view(), name="update_pwd"),

    # 发送邮箱验证码
    url(r'^sendemail_code/$', SendEmailCodeView.as_view(), name="sendemail_code"),

    # 修改邮箱
    url(r'^update_email/$', UpdateEmailView.as_view(), name="update_email"),

    # 我的课程
    url(r'^mycourse/$', MyCourseView.as_view(), name="mycourse"),

    # 我收藏的课程机构
    url(r'^myfav/org/$', MyFavOrgView.as_view(), name="myfav_org"),
]
