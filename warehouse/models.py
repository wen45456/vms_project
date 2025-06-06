from django.db import models
from django.contrib.auth.models import User

# 仓库表
class Warehouse(models.Model):
    name = models.CharField(max_length=50, unique=True)
    location = models.CharField(max_length=100)
    capacity = models.IntegerField(default=1000)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

    class Meta:
        indexes = [
            models.Index(fields=['name'])
        ]

# 商品表
class Product(models.Model):
    material_number = models.CharField(max_length=50, unique=True)
    name = models.CharField(max_length=100)
    spec = models.CharField(max_length=50, unique=True)
    supplier = models.CharField(max_length=100)
    purchase_price = models.DecimalField(max_digits=10, decimal_places=2)
    sale_price = models.DecimalField(max_digits=10, decimal_places=2)
    warehouse = models.ForeignKey('Warehouse', on_delete=models.CASCADE)
    quantity = models.IntegerField()
    last_modified = models.DateTimeField(auto_now=True)

    @staticmethod
    def get_by_field(field, value):
        try:
            return Product.objects.get(**{field: value})
        except Product.DoesNotExist:
            return None
        except Product.MultipleObjectsReturned:
            raise
    
    @staticmethod
    def search_by_field(field, value):
        return Product.objects.filter(**{f'{field}__icontains': value})

class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    permissions = models.CharField(max_length=20, choices=(
        ('admin', '管理员'),
        ('purchase', '采购'),
        ('sales', '销售')
    ))
    created_at = models.DateTimeField(auto_now_add=True)
    last_login = models.DateTimeField(auto_now=True)

    class Meta:
        indexes = [
            # 删除以下无效索引
            # models.Index(fields=['name']),
            # models.Index(fields=['supplier'])
        ]

    def __str__(self):
        return f"{self.user.username} ({self.get_permissions_display()})"

# 库存表
class Inventory(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    warehouse = models.ForeignKey(Warehouse, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=0)
    last_updated = models.DateTimeField(auto_now=True)

    class Meta:
        unique_together = ('product', 'warehouse')  # 联合唯一约束
        indexes = [
            models.Index(fields=['product', 'warehouse']),
            models.Index(fields=['last_updated'])
        ]

# 在Transaction类上方添加类型选择
TYPE_CHOICES = [
    ('IN', '入库'),
    ('OUT', '出库')
]

# 出入库记录表
class Transaction(models.Model):
    transaction_type = models.CharField(max_length=3, choices=TYPE_CHOICES)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    warehouse = models.ForeignKey(Warehouse, on_delete=models.CASCADE)
    quantity = models.IntegerField()
    operator = models.ForeignKey(User, on_delete=models.SET_NULL, null=True)
    # 删除此行：timestamp = models.DateTimeField(auto_now_add=True)
    sale_price = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    created_at = models.DateTimeField(auto_now_add=True)

# Create your models here.
