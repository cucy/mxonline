# coding:utf8
from __future__ import unicode_literals
from datetime import datetime

from organization.models import CourseOrg, Teacher
from django.db import models


# Create your models here.
class Course(models.Model):
    # 课程外键关联到某个机构中
    course_org = models.ForeignKey(CourseOrg, null=True, blank=True, verbose_name=u'课程机构')
    name = models.CharField(max_length=50, verbose_name=u'课程名')
    desc = models.CharField(max_length=300, verbose_name=u'课程描述')
    detail = models.TextField(verbose_name=u'课程详情')
    is_banner = models.BooleanField(default=False, verbose_name=u'是否轮播')
    teacher = models.ForeignKey(Teacher, null=True, blank=True, verbose_name=u'讲师')  # 课程和讲师的关联
    degree = models.CharField(verbose_name=u"难度", choices=(('cj', '初级'), ('zj', '中级'), ('gj', '高级')), max_length=5)
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长')
    students = models.IntegerField(default=0, verbose_name=u'学习人数')
    fav_nums = models.IntegerField(default=0, verbose_name=u'收藏人数')
    image = models.ImageField(upload_to='courses/%Y/%m', max_length=100, verbose_name=u'封面图')
    click_nums = models.IntegerField(default=0, verbose_name=u'点击数量')
    category = models.CharField(max_length=20, default=u"后端开发", verbose_name=u'课程类别')
    tag = models.CharField(default='', max_length=10, verbose_name=u"课程标签")
    yuoneed_know = models.CharField(default='', max_length=300, verbose_name=u"课程需知")
    teacher_tell = models.CharField(default='', max_length=300, verbose_name=u"老师告诉你")
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'课程'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name

    def get_zj_nums(self):
        # 获取课程章节数量  在模板中可以直接调用这个方法
        # self 当前课程的实例lesson_set 指向Lesson
        return self.lesson_set.all().count()

    get_zj_nums.short_description = "章节数量"

    def go_to(self):
        # 点击后跳转到（自定义）
        from django.utils.safestring import mark_safe
        return mark_safe("<a href='http://www.baidu.com'>跳转百度</a>")

    go_to.short_description = "跳转百度"

    def get_learn_users(self):
        # 获取学习人数
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):
        # 获取课程章节
        return self.lesson_set.all()


class BannerCourse(Course):
    class Meta:
        verbose_name = "轮播课程"
        verbose_name_plural = verbose_name
        proxy = True
        # 设置proxy为True不会生成新的表
        # 可以在xadmin中注册不同的管理器


class Lesson(models.Model):
    course = models.ForeignKey(Course, verbose_name=u'课程')
    learn_times = models.IntegerField(default=0, verbose_name=u'学习时长(min)')
    name = models.CharField(max_length=100, verbose_name=u'章节名')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')
    ''' 章节信息表 '''

    class Meta:
        verbose_name = u'章节'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name

    def get_course_video(self):
        # 获取章节视频
        return self.video_set.all()


class Video(models.Model):
    lesson = models.ForeignKey(Lesson, verbose_name=u'章节')
    name = models.CharField(max_length=100, verbose_name=u'视频名')
    url = models.CharField(max_length=100, default='www.baidu.com', verbose_name=u'访问地址')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')
    ''' 章节和视频的关系 一对多 '''

    class Meta:
        verbose_name = u'视频'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


class CourseResource(models.Model):
    course = models.ForeignKey(Course, verbose_name=u'课程')
    name = models.CharField(max_length=100, verbose_name=u'名称')
    download = models.FileField(upload_to='course/resource/%Y/%m', verbose_name=u'资源文件', max_length=100)
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    ''' 视频和资源下载关系 一对多'''

    class Meta:
        verbose_name = u'课程资源'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


'''
Course
    课程信息
Lesson
    章节信息
Video
    视频, 视频真正的播放地址
CourseResource
    课程的资源
'''
