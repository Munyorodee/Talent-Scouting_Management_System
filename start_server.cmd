@echo off
for /f "tokens=1-2 delims=:" %%a in ('ipconfig^|find "IPv4"') do set ip==%%b
set ipAddress=%ip:~1%
title %ipAddress%
start chrome http://%ipAddress%:8000/login/admin
php artisan serve --host %ipAddress%