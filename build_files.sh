#!/bin/bash
echo " Building Project... "

# التثبيت مباشرة عبر uv مع علم التوافقية والأمان الكامل
uv pip install -r requirements.txt --system --break-system-packages

# تشغيل أمر الـ collectstatic المباشر
python3 manage.py collectstatic --noinput --clear

echo " Build Finished! "