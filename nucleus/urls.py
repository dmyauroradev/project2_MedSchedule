from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import MedicalStaffViewSet, DepartmentViewSet

router = DefaultRouter()
router.register(r'staffs', MedicalStaffViewSet)
router.register(r'department', DepartmentViewSet)

urlpatterns = [
    path('', include(router.urls)),
]