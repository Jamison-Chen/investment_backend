# Generated by Django 3.2.12 on 2022-05-01 03:22

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='company',
            fields=[
                ('stock_id', models.CharField(max_length=32, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=32, unique=True)),
            ],
        ),
        migrations.CreateModel(
            name='trade_record',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('deal_time', models.DateField()),
                ('deal_price', models.FloatField()),
                ('deal_quantity', models.BigIntegerField()),
                ('handling_fee', models.BigIntegerField()),
                ('company', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='stock.company')),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='trade_records', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='trade_plan',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('plan_type', models.CharField(max_length=32)),
                ('target_price', models.FloatField()),
                ('target_quantity', models.BigIntegerField()),
                ('company', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='stock.company')),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='trade_plans', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='stock_memo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('business', models.CharField(max_length=2048)),
                ('strategy', models.CharField(max_length=128)),
                ('note', models.CharField(max_length=4096)),
                ('company', models.OneToOneField(on_delete=django.db.models.deletion.PROTECT, to='stock.company')),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='stock_memos', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='stock_info',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('date', models.DateField()),
                ('trade_type', models.CharField(max_length=32)),
                ('quantity', models.BigIntegerField()),
                ('open_price', models.FloatField()),
                ('close_price', models.FloatField()),
                ('highest_price', models.FloatField()),
                ('lowest_price', models.FloatField()),
                ('fluct_price', models.FloatField()),
                ('fluct_rate', models.FloatField()),
                ('company', models.OneToOneField(on_delete=django.db.models.deletion.PROTECT, to='stock.company')),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='cash_dividend_record',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('deal_time', models.DateField()),
                ('cash_dividend', models.BigIntegerField()),
                ('company', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='stock.company')),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='cash_dividend_records', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'abstract': False,
            },
        ),
    ]
