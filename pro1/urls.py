from django.contrib import admin
from django.http import HttpResponseRedirect
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('auth/', include('djoser.urls')),
    path('auth/', include('djoser.urls.authtoken')),

    path('', lambda request: HttpResponseRedirect('/admin/')),

    path('api/', include('nucleus.urls')),
    path('api/schedule/', include('schedule.urls')),
]
