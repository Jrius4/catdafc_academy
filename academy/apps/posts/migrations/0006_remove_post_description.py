# Generated by Django 2.2.1 on 2019-05-04 13:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0005_post_description'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='post',
            name='description',
        ),
    ]