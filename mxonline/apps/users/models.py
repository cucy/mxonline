# coding:utf8
from __future__ import unicode_literals
from datetime import datetime
from django.contrib.auth.models import AbstractUser
from django.db import models


# Create your models here.
class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, default='', verbose_name=u'昵称')
    birday = models.DateField(null=True, blank=True, verbose_name=u'生日')
    gender = models.CharField(max_length=8, choices=(('male', u'男'), ('female', u'女')), default='female',
                              verbose_name=u'性别')
    address = models.CharField(max_length=100, default='', verbose_name=u'地址')
    mobile = models.CharField(max_length=11, null=True, blank=True)
    image = models.ImageField(upload_to='image/%Y/%m', default=u'image/default.png', max_length=100)

    class Meta:
        verbose_name = u'用户信息'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.username

    # 未读消息数量
    def get_unread_message_nums(self):
        # 不能在开头写import 否则会循环调用， 以下是调用的时候才进行导入
        from operation.models import UserMessage
        return UserMessage.objects.filter(user=self.id, has_read=False).count()



class EmailVerifyRecord(models.Model):
    code = models.CharField(max_length=20, verbose_name=u'验证码')
    email = models.EmailField(max_length=50, verbose_name=u'邮箱')
    send_type = models.CharField(max_length=18, default='register', choices=(('register', u'注册'),('forget', u'找回密码'),('update_email', u'修改邮箱')),verbose_name=u'验证码类型')
    send_time = models.DateTimeField(default=datetime.now, verbose_name=u'发送时间')

    class Meta:
        verbose_name = u'邮箱验证码'
        verbose_name_plural = verbose_name
        # def __unicode__(self):
        #     return '{0}{1}'.format(self.code, self.email)


class Banner(models.Model):
    title = models.CharField(max_length=100, verbose_name=u'标题')
    image = models.ImageField(upload_to='banner/%Y/%m', verbose_name=u'轮播图')
    url = models.URLField(max_length=200, verbose_name=u'访问地址')
    index = models.IntegerField(default=100, verbose_name=u'顺序')
    add_time = models.DateTimeField(default=datetime.now, verbose_name=u'添加时间')

    class Meta:
        verbose_name = u'轮播图'
        verbose_name_plural = verbose_name
