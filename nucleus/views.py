from rest_framework import viewsets
from .models import MedicalStaff, Department
from .serializers import MedicalStaffSerializer, DepartmentSerializer
from rest_framework.permissions import AllowAny

class MedicalStaffViewSet(viewsets.ModelViewSet):
    queryset = MedicalStaff.objects.select_related("department").all()
    serializer_class = MedicalStaffSerializer
    
class DepartmentViewSet(viewsets.ModelViewSet):
    queryset = Department.objects.all()
    serializer_class = DepartmentSerializer

