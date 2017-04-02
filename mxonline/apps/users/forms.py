#!/usr/bin/env python
#_*_ coding:utf8 _*_ 
__date__ = '2017/4/2 23:11'
__author__ = 'zhourudong'
from django import forms


class LoginForm(forms.Form):
    username = forms.CharField(required=True, min_length=2)
    password = forms.CharField(required=True, min_length=5)