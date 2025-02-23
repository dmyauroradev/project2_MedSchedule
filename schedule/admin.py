from django.contrib import admin
from .models import Shift, WorkSchedule

class ShiftAdmin(admin.ModelAdmin):
    list_display = ("shift_type", "date", "department_list")
    list_filter = ("date", "shift_type", "department__name")
    search_fields = ("department__name",)

    ordering = ("date",)

    def department_list(self, obj):
        return obj.department.name
    department_list.short_description = "Department"

class WorkScheduleAdmin(admin.ModelAdmin):
    list_display = ("id", "get_date", "get_department", "staff_list")
    list_filter = ("shift__date", "shift__shift_type", "shift__department")
    search_fields = ("shift__department__name", "staff__name")
    #filter_horizontal = ("staff",)
    filter_vertical = ('staff',)

    ordering = ("shift__date", "id")


    def get_date(self, obj):
        return obj.shift.date
    get_date.admin_order_field = "shift__date"
    get_date.short_description = "Date"

    def get_department(self, obj):
        return obj.shift.department.name
    get_department.short_description = "Department"

    def staff_list(self, obj):
        return ", ".join([s.username for s in obj.staff.all()])
    staff_list.short_description = "Staff"

admin.site.register(Shift, ShiftAdmin)
admin.site.register(WorkSchedule, WorkScheduleAdmin)
