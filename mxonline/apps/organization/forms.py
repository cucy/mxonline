#!/usr/bin/env python
# -- coding: utf-8 --
# Time: 2017/4/6 10:55
# Author: zhourudong
import re
from django import forms

from operation.models import UserAsk

''' 
常规写法 不用modelsform重复代码切字段和model几乎一致
class UserAskForm(forms.Form):
    name = forms.CharField(required=True, min_length=2, max_length=20)
    phone = forms.CharField(required=True, min_length=11, max_length=11)
    course_name = forms.CharField(required=True, min_length=5, max_length=5)
'''


class UserAskForm(forms.ModelForm):
    # 可以自己添加字段
    # my_fields = forms.CharField()

    class Meta:
        #  可以指定model from是使用哪个models来进行转换(继承)
        model = UserAsk
        # 指定需要哪些字段
        fields = ["name", "mobile", "course_name"]

    # 必须clean开头 自定义过滤规则(表单检查合法性)
    def clean_mobile(self):
        """
        验证手机号码是否合法
        :return: 
        """
        mobile = self.cleaned_data['mobile']
        print mobile
        REGEX_MOBILE = "^1[358]\d{9}$|^147\d{8}$|^176\d{8}$"
        p = re.compile(REGEX_MOBILE)
        if p.match(mobile):
            return mobile
        else:
            raise forms.ValidationError(u"手机号码格式错误", code="mobile_invalid")


