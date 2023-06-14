# Generated by Django 4.1.3 on 2023-05-06 18:29

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0003_auto_20210805_1926'),
    ]

    operations = [
        migrations.RenameField(
            model_name='comment',
            old_name='News',
            new_name='news',
        ),
        migrations.AlterField(
            model_name='category',
            name='category_image',
            field=models.ImageField(upload_to='imgs/'),
        ),
        migrations.AlterField(
            model_name='news',
            name='detail',
            field=ckeditor.fields.RichTextField(),
        ),
    ]