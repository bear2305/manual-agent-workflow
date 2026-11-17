@echo off
setlocal

rem ============================================================
rem  Creates the AI engineering project structure.
rem  Folders and EMPTY files only. Existing files are never overwritten.
rem  Run it from the folder where you want PROJECT to appear.
rem ============================================================

set "ROOT=%CD%\PROJECT"

echo Creating project in: %ROOT%
echo.

rem ---------- Folders ----------
call :mkd "00_PROJECT_CONTROL"
call :mkd "01_AGENT_ROLES"
call :mkd "02_MODEL_INDEPENDENCE"
call :mkd "03_RESEARCH"
call :mkd "04_TASKS\PENDING"
call :mkd "04_TASKS\ASSIGNED"
call :mkd "04_TASKS\SUBMITTED"
call :mkd "04_TASKS\APPROVED"
call :mkd "04_TASKS\REJECTED"
call :mkd "05_SOURCE_CODE"
call :mkd "06_INSPECTION_REPORTS"
call :mkd "07_TEST_REPORTS"
call :mkd "08_ERROR_REPORTS"
call :mkd "09_RELEASES"

rem ---------- 00 Project control ----------
call :mkf "00_PROJECT_CONTROL\PROJECT_CHARTER.md"
call :mkf "00_PROJECT_CONTROL\MASTER_ARCHITECTURE.md"
call :mkf "00_PROJECT_CONTROL\CURRENT_PROJECT_STATE.md"
call :mkf "00_PROJECT_CONTROL\DECISION_REGISTER.md"
call :mkf "00_PROJECT_CONTROL\TASK_REGISTER.md"
call :mkf "00_PROJECT_CONTROL\AGENT_REGISTRY.md"
call :mkf "00_PROJECT_CONTROL\HANDOVER_PROTOCOL.md"

rem ---------- 01 Agent roles ----------
call :mkf "01_AGENT_ROLES\MASTER_MANAGER.md"
call :mkf "01_AGENT_ROLES\RESEARCH_WORKER.md"
call :mkf "01_AGENT_ROLES\CODE_INSPECTOR.md"
call :mkf "01_AGENT_ROLES\VIRTUALIZATION_WORKER.md"
call :mkf "01_AGENT_ROLES\ANDROID_WORKER.md"
call :mkf "01_AGENT_ROLES\APPLICATION_WORKER.md"
call :mkf "01_AGENT_ROLES\DEBUGGING_WORKER.md"

rem ---------- 02 Model independence ----------
call :mkf "02_MODEL_INDEPENDENCE\WORKER_CONTRACT.md"
call :mkf "02_MODEL_INDEPENDENCE\TASK_FORMAT.md"
call :mkf "02_MODEL_INDEPENDENCE\RESPONSE_FORMAT.md"
call :mkf "02_MODEL_INDEPENDENCE\PROVIDER_REGISTRY.md"
call :mkf "02_MODEL_INDEPENDENCE\MODEL_REPLACEMENT_PROTOCOL.md"

echo.
echo Done. Open the PROJECT folder.
pause
exit /b 0

rem ---------- Helpers ----------
:mkd
if not exist "%ROOT%\%~1" mkdir "%ROOT%\%~1"
echo [folder] %~1
exit /b 0

:mkf
if not exist "%ROOT%\%~1" type nul > "%ROOT%\%~1"
echo [file]   %~1
exit /b 0
