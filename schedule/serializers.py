from rest_framework import serializers
from .models import Shift, WorkSchedule
from nucleus.serializers import MedicalStaffSerializer

class ShiftSerializer(serializers.ModelSerializer):
    class Meta:
        model = Shift
        fields = '__all__'

class WorkScheduleSerializer(serializers.ModelSerializer):
    shift = ShiftSerializer(read_only=True)
    staff = MedicalStaffSerializer(many=True, read_only=True)
    
    class Meta:
        model = WorkSchedule
        fields = '__all__'