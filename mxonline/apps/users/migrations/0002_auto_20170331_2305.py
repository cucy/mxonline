# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='userprofile',
            name='birday',
            field=models.DateField(null=True, verbose_name='\u751f\u65e5', blank=True),
        ),
        migrations.AlterField(
            model_name='userprofile',
            name='gender',
            field=models.CharField(default='female', max_length=6, verbose_name='\u6027\u522b', choices=[('male', '\u7537'), ('female', '\u5973')]),
        ),
    ]
