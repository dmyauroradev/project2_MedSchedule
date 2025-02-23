import django
import os

# Khởi tạo môi trường Django
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "pro1.settings")  # Thay your_project bằng tên project của bạn
django.setup()

from nucleus.models import MedicalStaff

# Duyệt qua tất cả user và sửa mật khẩu nếu chưa mã hóa
for user in MedicalStaff.objects.all():
    if not user.password.startswith("pbkdf2_sha256$"):  # Nếu chưa mã hóa
        print(f"Đang sửa mật khẩu cho user: {user.username}")
        user.set_password(user.password)  # Mã hóa lại
        user.save()  # Lưu vào database

print("Đã sửa xong mật khẩu cho tất cả user!")
