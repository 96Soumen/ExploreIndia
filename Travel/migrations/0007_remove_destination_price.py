# Generated by Django 3.0.2 on 2020-05-09 10:28

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Travel', '0006_auto_20200509_1202'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='destination',
            name='price',
        ),
    ]
