from django.shortcuts import render, redirect
from django.contrib import messages
from .models import News, Category, Comment
from .forms import ContactForm
from django.core.mail import send_mail, BadHeaderError
from django.http import HttpResponse
from django.db.models import Q
from django.core.paginator import Paginator
from django.shortcuts import get_object_or_404
import requests
import json


#  Home Page
def home(request):
    first_news = News.objects.first()
    ten_news = list(News.objects.all().order_by('-id'))[:10]
    last_news1 = ten_news[0]
    last_news2 = ten_news[1]
    last_news3 = ten_news[2]

    return render(request, 'home.html', {
        'first_news': first_news,
        'last_news1': last_news1,
        'last_news2': last_news2,
        'last_news3': last_news3,
        'ten_news': ten_news,

    })


# All News Page
def all_news(request):
    search_query = request.GET.get('s')
    if search_query:
        news_list = News.objects.filter(Q(title__icontains=search_query))
    else:
        news_list = list(News.objects.all().order_by('-add_time'))

    paginator = Paginator(news_list, 9)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    return render(request, 'all-news.html', {
        'page_obj': page_obj,
    })


def detail(request, id):
    news = get_object_or_404(News, pk=id)
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        comment = request.POST['message']
        Comment.objects.create(
            news=news,
            name=name,
            email=email,
            comment=comment
        )
        messages.success(request, 'Коментар опубліковано.')
    news.views_count += 1
    news.save()
    category = Category.objects.get(id=news.category.id)
    rel_news = News.objects.filter(category=category).exclude(id=id)[0:3]
    comments = Comment.objects.filter(news=news, status=True).order_by('-id')
    return render(request, 'detail.html', {
        'news': news,
        'related_news': rel_news,
        'comments': comments
    })


def all_category(request):
    cats = Category.objects.all()
    return render(request, 'category.html', {
        'cats': cats
    })


def category(request, id):
    category = Category.objects.get(id=id)
    news = list(News.objects.filter(category=category).order_by('-add_time'))
    return render(request, 'category-news.html', {
        'all_news': news,
        'category': category
    })


def contacts(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            subject = "Website Inquiry"
            body = {
                'name': form.cleaned_data['name'],
                'email': form.cleaned_data['email_address'],
                'message': form.cleaned_data['message'],
            }
            message = "\n".join(body.values())

            try:
                send_mail(subject, message, 'kssteamail0@gmail.com', ['kssteamail0@gmail.com'])
            except BadHeaderError:
                return HttpResponse('Invalid header found.')
            return redirect("home")

    form = ContactForm()
    return render(request, 'contacts.html', {'form': form})


def about(request):
    return render(request, 'about.html', {
        'about': about
    })

