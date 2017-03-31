#coding:utf8
from django.contrib import admin

# Register your models here.


from .models import UserProfile

""" 为管理器添加一个profile"""


class UserProfileAdmin(admin.ModelAdmin):
    pass


admin.site.register(UserProfile, UserProfileAdmin)
