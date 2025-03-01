# Hệ thống quản lý lịch trực cho bác sĩ
- MedSchedule là một mini project, giúp quản lý lịch trực của nhân viên y tế, đảm bảo phân công ca hợp lý theo từng khoa và quy định của bệnh viện. Hỗ trợ admin tự sắp lịch hoặc hệ thống tự động sắp lịch theo quy tắc.
Tính năng chính:
* Quản lý nhân viên y tế (hiện tại là bác sĩ, nếu có thể mở rộng sau này sẽ là y tá, hộ lý)
* Sắp xếp ca trực theo khoa & công bằng theo tháng
* Giao diện quản trị thân thiện với Django Admin
* API RESTful để tích hợp với các hệ thống khác
- Công nghệ sử dụng:
* Backend: Django Rest Framework (DRF)
* Database: MySQL
#  Hướng dẫn chạy dự án
## 1. Clone dự án và tạo môi trường ảo
git clone https://github.com/dmyauroradev/project2_MedSchedule.git
cd pro1
python -m venv venv
source venv/bin/activate  # Trên Windows: venv\Scripts\activate
pip install -r requirements.txt

## 2. Cấu hình Database:
### Cách 1: Dùng SQLite (Nhanh, không cần MySQL):
* Mở file settings.py, tìm dòng cấu hình DATABASES và sửa thành:
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}

### Cách 2: Dùng MySQL (Nếu muốn dùng MySQL thay vì SQLite):
* Tạo database MySQL:
mysql -u root -p
CREATE DATABASE dj_pro1;
* Đặt DATABASE_URL với cú pháp:
DATABASE_URL=mysql://root:your_password@localhost:3306/dj_pro1

## 3. Tạo & cấu hình .env:
cp .env.example .env
### Tạo SECRET_KEY mới:
python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
-> Dán SECRET_KEY vào .env

## 4. Chạy lệnh migrate:
python manage.py migrate

## 5. Tạo tài khoản Admin (để vào trang quản trị)
python manage.py createsuperuser

## 6. Chạy server:
python manage.py runserver
-> Truy cập trang web tại: http://127.0.0.1:8000
