from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import Shift, WorkSchedule
from .serializers import ShiftSerializer, WorkScheduleSerializer
from schedule.utils import auto_schedule

class ShiftViewSet(viewsets.ModelViewSet):
    queryset = Shift.objects.all().order_by('date')
    serializer_class = ShiftSerializer

class WorkScheduleViewSet(viewsets.ModelViewSet):
    queryset = WorkSchedule.objects.all().order_by('shift__date', 'shift__id')
    serializer_class = WorkScheduleSerializer

@api_view(['POST'])
def generate_schedule(request):
    auto_schedule()
    return Response({"message": "Lịch trực đã được tạo tự động!"})
