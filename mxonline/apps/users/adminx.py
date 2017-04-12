#!/usr/bin/env python
# -- coding: utf-8 --
__time__ = '2017/4/1 00:09'
__author__ = 'zhour udong'

from .models import EmailVerifyRecord, Banner, UserProfile


from xadmin.plugins.auth import UserAdmin
import xadmin
from xadmin import views


class UserProfileAdmin(UserAdmin):
    pass
    # 重载方法
    # def get_form_layout(self):
    #     # 自定义的一种显示方式
    #     if self.org_obj:
    #         self.form_layout = (
    #             Main(
    #                 Fieldset('',
    #                          'username', 'password',
    #                          css_class='unsort no_title'
    #                          ),
    #                 Fieldset(_('Personal info'),
    #                          Row('first_name', 'last_name'),
    #                          'email'
    #                          ),
    #                 Fieldset(_('Permissions'),
    #                          'groups', 'user_permissions'
    #                          ),
    #                 Fieldset(_('Important dates'),
    #                          'last_login', 'date_joined'
    #                          ),
    #             ),
    #             Side(
    #                 Fieldset(_('Status'),
    #                          'is_active', 'is_staff', 'is_superuser',
    #                          ),
    #             )
    #         )
    #     return super(UserAdmin, self).get_form_layout()



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

# 卸载django admin 自动注册的userprofile
# from django.contrib.auth.models import User
# xadmin.site.unregister(User)

xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)
# xadmin.site.register(UserProfile, UserProfileAdmin)


