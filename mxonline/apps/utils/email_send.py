#!/usr/bin/env python
# _*_ coding:utf8 _*_
__date__ = '2017/4/3 11:03'
__author__ = 'zhourudong'
from random import Random
from django.core.mail  import send_mail
from mxonline.settings import EMAIL_FROM

from users.models import EmailVerifyRecord


def ramdom_str(randomlength=8):
    str_ = ''
    chars = "asdbfijkuldhfgiu72783457584568dfsgjhYUhbajuerhiHGUYGHUIFHE"
    length = len(chars) - 1
    random = Random()
    for i in range(randomlength):
        str_ += chars[random.randint(0, length)]
    return str_


def send_register_email(email, send_type = 'register'):
    email_record = EmailVerifyRecord()
    code = ramdom_str(16)
    """ 生成16位数字符 """
    email_record.code = code
    email_record.email = email
    email_record.send_type = send_type
    email_record.save()
    """ 生成字符串插入数据库 """

    """ 向用户发送邮件 """
    email_title = ""
    email_body = ""

    if send_type == "register":
        email_title = "暮雪在线网注册链接"
        email_body = "请点击以下链接激活你的账号: http://127.0.0.1:8000/active/{0}".format(code)
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email, ])
        if send_status:
            pass

