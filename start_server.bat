@echo off
cd /d "%~dp0"

set PORT=8000
set URL=http://localhost:%PORT%

echo.
echo ==========================================
echo  Local Unity WebGL Server Started
echo.
echo  Server Root Directory:
echo      %cd%
echo.
echo  Open this in your browser:
echo      %URL%
echo.
echo  Press Ctrl+C to stop the server.
echo ==========================================
echo.

REM ブラウザを自動で開く
start "" "%URL%"

python -m http.server %PORT%

pause
