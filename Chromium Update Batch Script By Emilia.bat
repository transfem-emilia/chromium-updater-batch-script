@echo off
setlocal

rem === Set path to your Chromium binary ===
set CHROME_PATH=&YOURPATH&


rem === Get current version using PowerShell ===
for /f "delims=" %%v in ('powershell -Command "(Get-Item '%CHROME_PATH%').VersionInfo.ProductVersion"') do set CURRENT_VERSION=%%v

rem === Check if version was retrieved correctly ===
if "%CURRENT_VERSION%"=="" (
    echo ERROR: Could not retrieve Chromium version!
    echo ERROR: Could not retrieve Chromium version!
    pause
    exit /b
)

rem === Get latest version from Woolyss API ===
powershell -Command "$r = Invoke-WebRequest 'https://chromium.woolyss.com/api/v3/?os=windows&bit=64&type=stable-codecs-sync&out=string'; ($r.Content -split ';') | ForEach-Object { if ($_ -like 'version=*') { ($_ -split '=')[1] } }" > tmp_ver.txt
for /f "delims=" %%a in (tmp_ver.txt) do set LATEST_VERSION=%%a
del tmp_ver.txt

rem === Check if Woolyss API version was retrieved correctly ===
if "%LATEST_VERSION%"=="" (
    echo ERROR: Could not retrieve latest version from Woolyss API!
    echo ERROR: Could not retrieve latest version from Woolyss API!
    pause
    exit /b
)



rem === Create a timestamp for the log ===
for /f "tokens=1-4 delims=/- " %%a in ('date /t') do set DATE=%%d-%%b-%%c
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set TIME=%%a-%%b

set TIMESTAMP=%DATE% %TIME%

rem === Log the version check ===
echo %TIMESTAMP% - Checking version...
echo %TIMESTAMP% - Current version: %CURRENT_VERSION% 
echo %TIMESTAMP% - Latest version: %LATEST_VERSION%

rem === Compare versions and log actions ===
if "%CURRENT_VERSION%" NEQ "%LATEST_VERSION%" (
    echo %TIMESTAMP% - Older version detected. Opening Woolyss website for download...
    start https://chromium.woolyss.com/#windows-64-bit
) else (
    echo %TIMESTAMP% - Version is up-to-date. No update needed.
)

echo %TIMESTAMP% - Launching Chromium...

rem === Launch Chromium ===
start "" "%&YOURPATH&%"

endlocal
