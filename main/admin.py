from django.contrib import admin
from .models import Category, News, Comment
from .forms import NewsAdminForm

# Register your models here.
admin.site.register(Category, )


class AdminNews(admin.ModelAdmin):
    list_display = ('title', 'category', 'add_time')
    form = NewsAdminForm


admin.site.register(News, AdminNews)


class AdminComment(admin.ModelAdmin):
    list_display = ('news', 'email', 'comment', 'status')


admin.site.register(Comment, AdminComment)
