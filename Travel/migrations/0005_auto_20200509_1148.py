# Generated by Django 3.0.2 on 2020-05-09 06:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Travel', '0004_transactionhistory_cancelled'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='transactionhistory',
            name='bookingday',
        ),
        migrations.AddField(
            model_name='transactionhistory',
            name='cancel_Id',
            field=models.CharField(blank=True, max_length=50),
        ),
    ]
