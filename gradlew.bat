@echo off
REM Ensure we have a gradle distribution
set "GRADLE_HOME=%~dp0\gradle"

REM Run gradle
if not exist "%GRADLE_HOME%\bin\gradle.bat" (
  echo Cannot find gradle in %GRADLE_HOME%
  exit /b 1
)

"%GRADLE_HOME%\bin\gradle.bat" %*