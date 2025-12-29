@echo off
REM Fitbliss Run Script - Fixed Version
REM Uses Java 25 instead of default Java 8

echo ========================================
echo    Fitbliss Fitness Tracker
echo ========================================
echo.

REM Use Java 25 (required for this application)
set JAVA_PATH=C:\Program Files\Java\jdk-25\bin\java.exe
set JAR_PATH=project\out\artifacts\Fitbliss\Fitbliss.jar

REM Check if Java 25 exists
if not exist "%JAVA_PATH%" (
    echo ERROR: Java 25 not found at %JAVA_PATH%
    echo Please install Java 18 or higher
    pause
    exit /b 1
)

REM Check if JAR exists
if not exist "%JAR_PATH%" (
    echo ERROR: Fitbliss.jar not found at %JAR_PATH%
    pause
    exit /b 1
)

echo Starting Fitbliss application with Java 25...
echo.

REM Run the application
"%JAVA_PATH%" -jar "%JAR_PATH%"

pause

