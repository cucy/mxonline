# -*- coding: utf-8 -*-
# Generated by Django 1.9.12 on 2017-04-11 21:22
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('operation', '0005_auto_20170406_1524'),
    ]

    operations = [
        migrations.RenameField(
            model_name='usercourse',
            old_name='add_time',
            new_name='learn_times',
        ),
    ]
