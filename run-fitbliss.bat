@echo off
REM Fitbliss Run Script for Windows
echo ========================================
echo    Fitbliss Fitness Tracker
echo ========================================
echo.

REM Check if MySQL password is set
if "%MYSQL_PASSWORD%"=="" (
    echo MySQL Password not set in environment.
    echo If your MySQL root user requires a password, set it using:
    echo   set MYSQL_PASSWORD=your_password
    echo.
    echo Attempting to run with empty password (default for XAMPP/WAMP)...
    echo.
)

REM Run the application
echo Starting Fitbliss application...
echo.

java -jar project\out\artifacts\Fitbliss\Fitbliss.jar

pause


