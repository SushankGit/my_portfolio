@echo off
title Sushank Portfolio - Localhost Server
echo ========================================================
echo  Sushank Shrestha - Portfolio Development Server
echo ========================================================
echo.

:: Check if F:\Xampp\php\php.exe exists
if exist "F:\Xampp\php\php.exe" (
    set "PHP_BIN=F:\Xampp\php\php.exe"
) else (
    set "PHP_BIN=php"
)

echo [INFO] Using PHP: %PHP_BIN%
echo [INFO] Starting localhost server on http://localhost:8000...
echo [INFO] Or access via XAMPP Apache at http://localhost/PROJECTS/Portfolio%%20Website/
echo.
echo Press Ctrl+C to stop the server.
echo.

:: Open browser automatically
start http://localhost:8000

:: Start PHP built-in development server
%PHP_BIN% -S localhost:8000
pause
