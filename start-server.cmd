@echo off
"%~dp0node.exe" "%~dp0node_modules\@deepseek-ai\dsh\lib\bin.js" web --port %1 > "%~dp0dsh-server.log" 2>&1
