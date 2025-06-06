from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User
from .models import Warehouse, Product, Inventory, Transaction

# 在已有注册代码后添加
class CustomUserAdmin(UserAdmin):
    list_display = ('username', 'email', 'is_staff', 'date_joined', 'last_login')
    list_filter = ('is_staff', 'is_superuser')
    
admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)
admin.site.register(Warehouse)
@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['material_number', 'name', 'spec', 'supplier', 'purchase_price', 'sale_price']
    list_filter = ('supplier', 'warehouse')
    search_fields = ('material_number', 'name')
admin.site.register(Inventory)
admin.site.register(Transaction)
# Register your models here.
