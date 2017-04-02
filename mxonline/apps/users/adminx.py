#!/usr/bin/env python
# -- coding: utf-8 --
__time__ = '2017/4/1 00:09'
__author__ = 'zhour udong'

from .models import EmailVerifyRecord, Banner
import xadmin
from xadmin import views


class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class GlobalSettings(object):
    site_title = "幕学在线管理系统"
    site_footer = '幕学在线公司'
    menu_style = "accordion"
    # 导航栏收起




class EmailVerifyRecordAdmin(object):
    list_display = ('code', 'email', 'send_type', 'send_time',)
    search_fields = ['code', 'email', 'send_type',]
    list_filter = ('code', 'email', 'send_type', 'send_time',)


class BannerAdmin(object):
    list_display = ('title', 'image', 'url', 'index','add_time')
    search_fields = ['title', 'image', 'url', 'index']
    list_filter = ('title', 'image', 'url', 'index','add_time')

xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)