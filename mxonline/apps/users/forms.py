#!/usr/bin/env python
# _*_ coding:utf8 _*_
__date__ = '2017/4/2 23:11'
__author__ = 'zhourudong'
from django import forms
from captcha.fields import CaptchaField
from .models import UserProfile


class LoginForm(forms.Form):
    username = forms.CharField(required=True, min_length=2)
    password = forms.CharField(required=True, min_length=5)


class RegisterForm(forms.Form):
    email = forms.EmailField(required=True, )
    password = forms.CharField(required=True, min_length=5)
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})


class ForgetForm(forms.Form):
    email = forms.EmailField(required=True, min_length=3)
    captcha = CaptchaField(error_messages={"invalid": u"验证码错误"})


class ModifyPwdForm(forms.Form):
    password1 = forms.CharField(required=True, min_length=3)
    password2 = forms.CharField(required=True, min_length=3)


class UloadImageForm(forms.ModelForm):
    # 使用modelform 先指明使用哪个model来修改
    class Meta:
        #  可以指定model from是使用哪个models来进行转换(继承)
        model = UserProfile
        # 指定需要哪些字段
        fields = ["image",]


class UloadInfoForm(forms.ModelForm):
    # 使用modelform 先指明使用哪个model来修改
    class Meta:
        #  可以指定model from是使用哪个models来进行转换(继承)
        model = UserProfile
        # 指定需要哪些字段
        fields = ["nick_name",'birday','gender','address','mobile']




