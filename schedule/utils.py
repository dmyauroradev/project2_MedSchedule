import random
from datetime import date, datetime, timedelta
from collections import defaultdict
from nucleus.models import MedicalStaff, Department
from .models import Shift, WorkSchedule
from django.db import connection

def reset_shift_id():
    with connection.cursor() as cursor:
        cursor.execute("ALTER TABLE shift_shift AUTO_INCREMENT = 1")

def auto_schedule():
    #WorkSchedule.objects.all().delete()   
    #print("Đã xóa toàn bộ lịch cũ trước khi tạo mới!")
    #Shift.objects.all().delete()
    #reset_shift_id()
    #print(Shift.objects.all().count())
    
    today = datetime.today().date()
    doctors = list(MedicalStaff.objects.filter(role="doctor"))
    for doc in doctors:
        print(f"Bác sĩ: {doc.username}, Khoa: {doc.department.name}")
    departments = Department.objects.all()

    # Theo dõi số ca đêm của từng bác sĩ
    doctor_night_shifts = defaultdict(int)
    doctor_weekly_shifts = defaultdict(lambda: defaultdict(int))  # {bác sĩ: {tuần: số ca}}

    # Lập lịch cho cả tháng (từ ngày 1 đến cuối tháng)
    first_day = today.replace(day=1)
    next_month = (first_day + timedelta(days=32)).replace(day=1)
    last_day = next_month - timedelta(days=1)
    total_days = (last_day - first_day).days + 1

    for day in range(total_days):
        current_date = first_day + timedelta(days=day)
        current_week = current_date.isocalendar()[1]

        # Không sắp xếp lịch cho ngày đã qua
        if current_date < today:
            continue

        for department in departments:
            max_doctors = 5 if department.name == "Khoa Cấp cứu" else 3

            # Đảm bảo chỉ có một ca trực đêm duy nhất cho mỗi ngày và mỗi phòng ban
            shift_night, created = Shift.objects.get_or_create(
                shift_type="night",
                date=current_date,
                department=department 
            )
            # Kiểm tra xem shift đã thuộc department chưa
            if shift_night.department != department:
                shift_night.department = department
                shift_night.save()

            # Kiểm tra WorkSchedule có tồn tại không trước khi tạo mới
            work_schedule, created = WorkSchedule.objects.get_or_create(
                shift=shift_night
            )
            # Nếu ca đã có đủ bác sĩ, bỏ qua
            if work_schedule.staff.count() >= max_doctors:
                print(f"Đủ bác sĩ: {work_schedule.staff.count()} / {max_doctors} ({current_date} - {department.name})")
                continue

            # Chọn bác sĩ đủ điều kiện (ưu tiên bác sĩ chưa có ca trực)
            available_doctors = [
                doc for doc in doctors
                if doctor_night_shifts[doc.id] < 6 and 
                   doctor_weekly_shifts[doc.id][current_week] < 3
                   and doc not in work_schedule.staff.all() and doc.department == department
            ]
            # Chọn bác sĩ theo vòng quay (luân phiên)
            assigned_doctors = sorted(available_doctors, key=lambda x: doctor_night_shifts[x.id])[:max_doctors - work_schedule.staff.count()]

            # Cập nhật số ca trực
            for doc in assigned_doctors:
                doctor_night_shifts[doc.id] += 1
                doctor_weekly_shifts[doc.id][current_week] += 1


            # Kiểm tra Shift ID hợp lệ trước khi tạo WorkSchedule
            if shift_night.id is None:
                print("LỖI: Shift chưa được lưu đúng cách, bỏ qua tạo WorkSchedule!")
                continue

            # Chỉ thêm bác sĩ nếu còn thiếu
            if assigned_doctors:
                work_schedule.staff.add(*assigned_doctors)
                print(f"Đã cập nhật {current_date} - {department.name} với {len(assigned_doctors)} bác sĩ.")
                for doc in assigned_doctors:
                    print(f" - {doc.username} ({doc.department.name})")

    print("Lịch trực đã được tự động sắp xếp thành công!")