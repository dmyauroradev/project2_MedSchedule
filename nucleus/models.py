from django.contrib.auth.models import AbstractUser, Group, Permission
from django.db import models

class MedicalStaff(AbstractUser):
    ROLE_CHOICES = [
        ('doctor', 'Bác sĩ'),
        ('nurse', 'Y tá'),
        ('orderly', 'Hộ lý'),
    ]

    role = models.CharField(max_length=10, choices=ROLE_CHOICES)
    department = models.ForeignKey('Department', on_delete=models.CASCADE, related_name='staff', null=False)

    groups = models.ManyToManyField(
        Group,
        related_name="medicalstaff_groups", 
        blank=True
    )
    user_permissions = models.ManyToManyField(
        Permission,
        related_name="medicalstaff_permissions",
        blank=True
    )
    
    def __str__(self):
        return f"{self.username} - {self.role} - {self.department}"
    
class Department(models.Model):
    name = models.CharField(max_length=150, unique=True)
    description = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.name



