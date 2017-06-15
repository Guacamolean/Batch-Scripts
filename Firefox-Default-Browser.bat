@ECHO OFF

REM Check if Firefox is installed as an x86 or x64 application.
IF EXIST "C:\Program Files\Mozilla Firefox\uninstall\helper.exe" (GOTO x64)
IF EXIST "C:\Program Files (x86)\Mozilla Firefox\uninstall\helper.exe" (GOTO x86)
GOTO end

:x64
"C:\Program Files\Mozilla Firefox\uninstall\helper.exe" /SetAsDefaultAppGlobal
GOTO end

:x86
"C:\Program Files (x86)\Mozilla Firefox\uninstall\helper.exe" /SetAsDefaultAppGlobal
GOTO end

:end