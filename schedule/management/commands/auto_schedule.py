from django.core.management.base import BaseCommand
from schedule.utils import auto_schedule
from datetime import datetime

class Command(BaseCommand):
    help = "Tự động sắp xếp lịch trực cho 1 tháng"
    
    def handle(self, *args, **options):  
        auto_schedule()
        self.stdout.write(self.style.SUCCESS("Lịch trực đã được tạo thành công!"))