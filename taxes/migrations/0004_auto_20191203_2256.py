# Generated by Django 2.2.6 on 2019-12-03 14:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('taxes', '0003_auto_20191203_2010'),
    ]

    operations = [
        migrations.RenameField(
            model_name='document',
            old_name='RDO_CODE',
            new_name='RDO_Code',
        ),
    ]
