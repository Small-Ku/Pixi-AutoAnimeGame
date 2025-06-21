@echo off
setlocal enabledelayedexpansion

net session 2>&1
if %errorlevel% neq 0 (
    timeout /t 2
    PowerShell -Command "Start-Process '%~dpnx0' -WorkingDirectory '%~dp0' -Verb RunAs"
    exit /b
)

cd /D %~dp0
set available_tasks=zzz-app hsr-app

if "%~1"=="" goto prompt_task
set task=%~1
goto validate_task

:prompt_task
echo Available tasks:
set i=0
for %%j in (%available_tasks%) do (
    set /a i+=1
    echo [!i!] %%j
)
set /p task="Enter the task to run: "

:validate_task
set i=0
for %%j in (%available_tasks%) do (
    set /a i+=1
    if "%task%"=="!i!" (
        set task=%%j
        goto start_task
    )
    if /i "%%j"=="%task%" goto start_task
)
echo Invalid task name '%task%'
goto prompt_task

:start_task
pixi run %task%

exit