# coding:utf8
from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.views.generic.base import View
from .models import UserProfile


#   authenticate user validata
#  Create your views here.


class CustomBackend(ModelBackend):
    """ 认证类型 """

    def authenticate(self, username=None, password=None, **kwargs):
        try:
            # 并集操作| 交集操作,
            print(username, "------------------------")
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            # 传入明文进行对比
            if user.check_password(password):
                return user
        except Exception as e:
            print(e)
            return None


class LoginView(View):
    def get(self, request):
        return render(request, "login.html")

    def post(self, request):
        user_name = request.POST.get("username", "")
        pass_word = request.POST.get("password", "")

        user = authenticate(username=user_name, password=pass_word)
        if user is not None:
            login(request, user)
            return render(request, "index.html")
        else:
            return render(request, "login.html", {"msg": "用户名或密码错误"})

