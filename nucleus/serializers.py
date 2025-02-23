from rest_framework import serializers
from .models import MedicalStaff, Department

class DepartmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Department
        fields = '__all__'

class MedicalStaffSerializer(serializers.ModelSerializer):
    class Meta:
        model = MedicalStaff
        fields = ['id', 'username', 'role', 'department', 'password']
        extra_kwargs = {'password': {'write_only': True}}  # Không trả password về

    def create(self, validated_data):
        password = validated_data.pop('password', None)  # Lấy password ra và xóa khỏi validated_data
        user = MedicalStaff(**validated_data)
        if password:
            user.set_password(password)  # Mã hóa mật khẩu
        user.save()
        return user

