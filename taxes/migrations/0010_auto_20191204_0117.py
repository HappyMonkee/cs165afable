# Generated by Django 2.2.6 on 2019-12-03 17:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('taxes', '0009_auto_20191204_0115'),
    ]

    operations = [
        migrations.AlterField(
            model_name='document',
            name='SBN',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='document',
            name='TIN',
            field=models.IntegerField(),
        ),
    ]