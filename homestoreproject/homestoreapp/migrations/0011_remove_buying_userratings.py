# Generated by Django 4.1 on 2022-11-30 04:17

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('homestoreapp', '0010_buying_userratings'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='buying',
            name='userratings',
        ),
    ]
