from django.db import models
from nucleus.models import MedicalStaff, Department
from datetime import date

class Shift(models.Model):
    SHIFT_CHOICES = [
        ('morning', 'Ca sáng'),
        ('afternoon', 'Ca chiều'),
        ('night', 'Ca đêm'),
    ]

    shift_type = models.CharField(max_length=10, choices=SHIFT_CHOICES)
    date = models.DateField(default=date.today)
    department = models.ForeignKey(Department, on_delete=models.CASCADE, related_name="shifts")

    class Meta:
        unique_together = ('shift_type', 'date', 'department')  #Đảm bảo mỗi phòng ban chỉ có 1 ca đêm/ngày
        db_table = 'schedule_shift'  

    def __str__(self):
        return f"{self.shift_type} - {self.date} - {self.department.name}"

    # def __str__(self):
    #    return f"{self.shift_type} - {self.date} - {', '.join([d.name for d in self.department.all()])}"
    

class WorkSchedule(models.Model):
    shift = models.ForeignKey(Shift, on_delete=models.CASCADE, related_name="work_schedules")
    staff = models.ManyToManyField(MedicalStaff, related_name="work_schedules")

    def __str__(self):
        return f"{self.shift.date}: {self.shift.department} - {self.shift.shift_type} ({', '.join([s.username for s in self.staff.all()])})"
