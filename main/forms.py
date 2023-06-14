from django import forms
from django.shortcuts import render, redirect
from .models import News
from ckeditor.widgets import CKEditorWidget


class ContactForm(forms.Form):
    name = forms.CharField(
        max_length=50,
        widget=forms.TextInput(attrs={'placeholder': 'Ваше ім\'я'})
    )
    email_address = forms.EmailField(
        max_length=150,
        widget=forms.EmailInput(attrs={'placeholder': 'Ваш Email'})
    )
    message = forms.CharField(
        widget=forms.Textarea(attrs={'placeholder': 'Ваше повідомлення', 'rows': 5})
    )


class NewsAdminForm(forms.ModelForm):
    detail = forms.CharField(widget=CKEditorWidget())

    class Meta:
        model = News
        fields = '__all__'
