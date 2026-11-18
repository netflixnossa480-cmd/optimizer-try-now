@echo off
title PC Speed Optimizer & Maintenance Tool
color 0A

echo ========================================================
echo   Windows Performance Optimizer & Cache Cleaner
echo   Safe for all files - Nothing personal will be deleted
echo ========================================================
echo.

echo [1/4] Flushing DNS cache...
ipconfig /flushdns
echo.

echo [2/4] Cleaning temporary system files...
del /s /f /q "%temp%\*" >nul 2>&1
del /s /f /q "C:\Windows\Temp\*" >nul 2>&1
echo Temporary cache files cleared successfully.
echo.

echo [3/4] Setting Power Plan to High Performance...
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
echo Power plan optimized for maximum speed.
echo.

echo [4/4] Restarting Windows Explorer to free up RAM...
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe
echo Explorer restarted.
echo.

echo ========================================================
echo   Optimization Complete! Your PC is now refreshed.
echo ========================================================
pause