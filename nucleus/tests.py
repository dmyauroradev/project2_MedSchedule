from django.test import TestCase
from django.contrib.auth import get_user_model
from .models import Department

class MedicalStaffTests(TestCase):
    def setUp(self):
        self.department = Department.objects.create(name="Khoa ICU")
        self.user = get_user_model().objects.create_user(
            username="doctor1",
            password="password123",
            role="doctor",
            department=self.department
        )

    def test_create_medical_staff(self):
        self.assertEqual(self.user.username, "doctor1") 
        self.assertEqual(self.user.role, "doctor")
        self.assertEqual(self.user.department.name, "Khoa ICU")

class DepartmentTests(TestCase):
    def test_create_department(self):
        department = Department.objects.create(name="Khoa Sản")
        self.assertEqual(department.name, "Khoa Sản")