# Generated by Django 2.2.6 on 2019-12-03 17:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('taxes', '0008_auto_20191203_2318'),
    ]

    operations = [
        migrations.AlterField(
            model_name='business',
            name='Accreditation_Number',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='business',
            name='Facility_Code',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='document',
            name='BIR_Registration_Date',
            field=models.DateField(null=True, verbose_name='BIR Registration Date'),
        ),
        migrations.AlterField(
            model_name='document',
            name='Registering_Office',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='document',
            name='SBN',
            field=models.ForeignKey(on_delete='CASCADE', to='taxes.Business'),
        ),
        migrations.AlterField(
            model_name='document',
            name='TIN',
            field=models.OneToOneField(on_delete='CASCADE', to='taxes.Taxpayer'),
        ),
        migrations.AlterField(
            model_name='taxpayer',
            name='Birthday',
            field=models.DateField(null=True, verbose_name='Birthday'),
        ),
        migrations.AlterField(
            model_name='taxpayer',
            name='Civil_Status',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='taxpayer',
            name='Email',
            field=models.EmailField(blank=True, max_length=254, null=True),
        ),
        migrations.AlterField(
            model_name='taxpayer',
            name='Gender',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AlterField(
            model_name='taxpayer',
            name='Name',
            field=models.CharField(blank=True, max_length=200),
        ),
    ]