# استفاده از یک ایمیج سبک و استاندارد برای v2ray
FROM teddysun/v2ray

# ایجاد پوشه تنظیمات (در صورت عدم وجود)
RUN mkdir -p /etc/v2ray

# کپی کردن فایل کانفیگ از کامپیوتر شما به داخل داکر
# دقت کن که نام فایل در کامپیوترت حتما config.json باشد
COPY config.json /etc/v2ray/config.json

# دستور اجرا
# من از ENTRYPOINT استفاده می‌کنم که پایدارتر است
ENTRYPOINT ["/usr/bin/v2ray", "-config", "/etc/v2ray/config.json"]
