from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import ShiftViewSet, WorkScheduleViewSet, generate_schedule

router = DefaultRouter()
router.register(r'shift', ShiftViewSet)
router.register(r'workschedule', WorkScheduleViewSet)

urlpatterns = [
    path('', include(router.urls)),

    path('auto-schedule/', generate_schedule, name="auto_schedule"),
]