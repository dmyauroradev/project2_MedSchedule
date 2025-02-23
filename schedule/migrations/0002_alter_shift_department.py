# Generated by Django 5.1.3 on 2025-02-22 12:41

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('nucleus', '0001_initial'),
        ('schedule', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='shift',
            name='department',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='shifts', to='nucleus.department'),
        ),
    ]
