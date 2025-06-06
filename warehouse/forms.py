from django import forms

class ProductImportForm(forms.Form):
    material_number = forms.CharField(label='物料号', max_length=50)
    name = forms.CharField(label='产品名称', max_length=100)
    spec = forms.CharField(label='产品型号', max_length=50)
    supplier = forms.CharField(label='供应商', max_length=100)
    purchase_price = forms.DecimalField(label='采购单价', max_digits=10, decimal_places=2)

# 删除CSV导入表单类