from django.urls import path

from . import views

app_name = 'taxes'
urlpatterns = [
    path('', views.display, name='display'),
    path('create/<str:table_name>/', views.create, name='create'),
    path('create/<str:table_name>/verify', views.verify, name='verify'),
    path('update/<str:table_name>/<int:value_id>/', views.update, name='update'),
    path('update/<str:table_name>/<int:value_id>/process/', views.process, name='process'),
    path('delete/<str:table_name>/<int:value_id>/', views.delete, name='delete'),
    path('success/', views.success, name='success'),
]