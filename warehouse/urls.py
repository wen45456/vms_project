from django.urls import path
from . import views

urlpatterns = [
    path('inventory/', views.inventory_query, name='inventory_query'),
    path('stock_in/', views.stock_in, name='stock_in'),
    path('stock_out/', views.stock_out, name='stock_out'),
    path('export/', views.export_inventory, name='export_inventory'),
    path('users/', views.user_list, name='user_list'),
    path('users/create/', views.user_create, name='user_create'),
    path('users/<int:user_id>/edit/', views.user_edit, name='user_edit'),
    path('users/<int:user_id>/delete/', views.user_delete, name='user_delete'),
    # 删除CSV相关路由配置
    # 入库相关路由
    path('stock_import/', views.stock_import, name='stock_import'),
    path('stock_import/template/', views.stock_import_template, name='stock_import_template'),  # 新增模板下载路由
    path('stock_import/result/', views.stock_import_result, name='stock_import_result'),
    # 保持产品导入路由不变
    path('import/', views.product_import, name='import'),  
    path('import/result/', views.import_result, name='import_result'),
    # 保留Excel模板下载路由
    path('import/template/', views.product_import_template, name='product_import_template'),
    path('get_print_data/', views.get_print_data, name='get_print_data'),
    path('api/get_product_by_field/', views.get_products_by_field, name='get_products_by_field'),
    path('print/', views.export_print_queue, name='print_queue'),
    path('stock_out/bulk/', views.stock_out_bulk, name='stock_out_bulk'),
    path('stock_out/template/', views.stock_out_template, name='stock_out_template'),
    path('stock_out/result/', views.stock_out_result, name='stock_out_result'),
]
