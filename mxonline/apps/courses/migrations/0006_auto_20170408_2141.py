# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-04-08 21:41
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0005_course_tag'),
    ]

    operations = [
        migrations.AlterField(
            model_name='video',
            name='name',
            field=models.CharField(default='www.baidu.com', max_length=100, verbose_name='\u8bbf\u95ee\u5730\u5740'),
        ),
    ]