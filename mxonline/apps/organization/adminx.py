#!/usr/bin/env python
# _*_ coding:utf8 _*_
__date__ = '2017/4/2 11:24'
__author__ = 'zhourudong'

import xadmin
from .models import CityDict, CourseOrg, Teacher


class CityDictAdmin(object):
    list_display = ('name', 'desc', 'add_time')
    search_fields = ('name', 'desc',)
    list_filter = ('name', 'desc', 'add_time')


class CourseOrgAdmin(object):
    list_display = ('name', 'desc', 'click_nums', "fav_nums", "image", "address", "city", "add_time")
    search_fields = ('name', 'desc', 'click_nums', "fav_nums", "image", "address", "city",)
    list_filter = ('name', 'desc', 'click_nums', "fav_nums", "image", "address", "city", "add_time")

    # 设置以后不会显示一条下拉框全部显示 下一级需要实现的功能（需要在上级设置）
    # 防止数据量过大时显示过多
    relfield_style = "fk-ajax"

    # CourseOrgAdmin 需要在它的外键设置（这是需要点击出现下拉效果的部分）  ---= 实现功能的部分


class TeacherAdmin(object):
    list_display = (
    'org', 'name', 'work_years', "work_ccompany", "work_position", "points", "click_nums", "fav_nums", "add_time")
    search_fields = ('org', 'name', 'work_years', "work_ccompany", "work_position", "points", "click_nums", "fav_nums",)
    list_filter = (
    'org', 'name', 'work_years', "work_ccompany", "work_position", "points", "click_nums", "fav_nums", "add_time")


xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)
