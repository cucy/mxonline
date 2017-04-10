#!/usr/bin/env python
#_*_ coding:utf8 _*_ 
__date__ = '2017/4/10 11:53'
__author__ = 'zhourudong'

from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator


class LoginRequiredMixin(object):
    @method_decorator(login_required(login_url='/login/')) # 判断用户是否登入 否则跳转
    def dispatch(self, request, *args, **kwargs):
        return super(LoginRequiredMixin, self).dispatch(request, *args, **kwargs)