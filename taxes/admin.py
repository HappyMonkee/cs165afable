from django.contrib import admin
from .models import Document, Taxpayer, Business
# Register your models here.
admin.site.register(Document)
admin.site.register(Taxpayer)
admin.site.register(Business)
