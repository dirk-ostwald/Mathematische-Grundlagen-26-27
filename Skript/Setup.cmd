@echo off
REM ------------------------------------------------------------------------ REM
REM Einmalige Einrichtung: legt die Verzeichnis-Junction _src an, ueber die
REM das PDWP-Quellprojekt in dieses Quarto-Projekt eingeblendet wird.
REM Es werden keine Dateien kopiert. Administratorrechte sind nicht noetig.
REM
REM WICHTIG: Vorher in Nextcloud unter
REM   Einstellungen - Allgemein - Ignorierte Dateien bearbeiten
REM das Muster  _src  hinzufuegen, damit der Client die verlinkten Inhalte
REM nicht ein zweites Mal hochlaedt.
REM ------------------------------------------------------------------------ REM
setlocal
set "QUELLE=C:\Users\dirko\Nextcloud\Home\pdwp-online\dirk-ostwald.github.io"
set "LINK=%~dp0_src"

if not exist "%QUELLE%" (
  echo FEHLER: Quellprojekt nicht gefunden:
  echo   %QUELLE%
  pause
  exit /b 1
)

if exist "%LINK%" (
  echo Die Junction _src existiert bereits - nichts zu tun.
) else (
  mklink /J "%LINK%" "%QUELLE%"
  if errorlevel 1 (
    echo FEHLER: Junction konnte nicht angelegt werden.
    pause
    exit /b 1
  )
  echo Junction _src wurde angelegt.
)

pause
