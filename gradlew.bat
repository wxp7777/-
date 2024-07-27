@echo off
:: ---------------------------------------------------------------------------
:: Gradle startup script for Windows
:: ---------------------------------------------------------------------------

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set GRADLE_HOME=%DIRNAME%

@rem Resolve any "." and ".." in GRADLE_HOME
for %%i in ("%GRADLE_HOME%") do set GRADLE_HOME=%%~fi

set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%"=="0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
exit /b 1

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%

set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
exit /b 1

:init
@rem Get command-line arguments, handling Windows conventions of backslashes by replacing with forward slashes
set CMD_LINE_ARGS=
set _SKIP=2

:parseArgs
if "x%~1"=="x" goto doneParsing
set CMD_LINE_ARGS=%CMD_LINE_ARGS% "%~1"
shift
goto parseArgs

:doneParsing

set CLASSPATH=%GRADLE_HOME%\gradle\wrapper\gradle-wrapper.jar

@rem Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%

:end
if "%OS%"=="Windows_NT" endlocal
