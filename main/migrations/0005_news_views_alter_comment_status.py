# Generated by Django 4.1.3 on 2023-05-07 10:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0004_rename_news_comment_news_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='news',
            name='views',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='comment',
            name='status',
            field=models.BooleanField(default=True),
        ),
    ]
