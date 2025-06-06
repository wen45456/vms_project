from django.contrib import admin
from django.urls import path, include
from warehouse import views
from django.contrib.auth import views as auth_views
from django.views.generic import RedirectView

urlpatterns = [
    # 移除重复的import/result/路径配置（原错误行）
    path('warehouse/', include('warehouse.urls')), 
    path('accounts/', include('django.contrib.auth.urls')),
    # path('import/result/', views.import_result, name='import_result'),  # 这行需要删除
    path('', RedirectView.as_view(url='/warehouse/inventory/'), name='root_redirect'),
    path('login/', auth_views.LoginView.as_view(template_name='registration/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('api/get_products_by_field/', views.get_products_by_field, name='get_products_by_field'),  # 修正为复数形式
]