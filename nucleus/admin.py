from django.contrib import admin
from .import models

class MedicalStaffAdmin(admin.ModelAdmin):
    list_display = ('username', 'role', 'department')
    list_filter = ('department', 'role')
    ordering = ['department__name', 'role']

# Register your models here.
admin.site.register(models.MedicalStaff, MedicalStaffAdmin)
admin.site.register(models.Department)