@echo off
REM ------------------------------------------------------------------------ REM
REM Rendert das Vorlesungsskript als PDF nach _book\.
REM ------------------------------------------------------------------------ REM
setlocal
cd /d "%~dp0"

if not exist "_src" (
  call "%~dp0Setup.cmd"
  if errorlevel 1 exit /b 1
)

quarto render --to pdf
if errorlevel 1 (
  echo.
  echo Das Rendern ist fehlgeschlagen.
  pause
  exit /b 1
)

echo.
echo Fertig: _book\Skript-Mathematische-Grundlagen.pdf
pause
