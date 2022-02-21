# Generated by Django 3.2 on 2022-02-21 12:23

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('stockInfoScraper', '0014_auto_20220221_2013'),
    ]

    operations = [
        migrations.AlterField(
            model_name='stock_info',
            name='company',
            field=models.OneToOneField(on_delete=django.db.models.deletion.PROTECT, to='stockInfoScraper.company'),
        ),
        migrations.AlterField(
            model_name='stock_memo',
            name='company',
            field=models.OneToOneField(on_delete=django.db.models.deletion.PROTECT, to='stockInfoScraper.company'),
        ),
    ]