@echo off
chcp 65001 >nul
set "PORT=3080"
echo 正在查找并停止 %PORT% 端口的 DeepSeek Harness 服务...
set "FOUND="
for /f "tokens=5" %%p in ('netstat -ano ^| findstr ":3080" ^| findstr "LISTENING"') do (
    set "FOUND=1"
    echo 停止进程 PID=%%p
    taskkill /F /PID %%p >nul 2>&1
)
if not defined FOUND echo 没有发现 %PORT% 端口有服务在运行。
echo.
pause
