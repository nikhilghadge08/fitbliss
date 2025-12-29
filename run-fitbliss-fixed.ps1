# Fitbliss Run Script - Fixed Version
# Uses Java 25 instead of default Java 8

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Fitbliss Fitness Tracker" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Use Java 25 (required for this application)
$javaPath = "C:\Program Files\Java\jdk-25\bin\java.exe"
$jarPath = "project\out\artifacts\Fitbliss\Fitbliss.jar"

# Check if Java 25 exists
if (-not (Test-Path $javaPath)) {
    Write-Host "ERROR: Java 25 not found at $javaPath" -ForegroundColor Red
    Write-Host "Please install Java 18 or higher" -ForegroundColor Yellow
    exit 1
}

# Check if JAR exists
if (-not (Test-Path $jarPath)) {
    Write-Host "ERROR: Fitbliss.jar not found at $jarPath" -ForegroundColor Red
    exit 1
}

Write-Host "Starting Fitbliss application with Java 25..." -ForegroundColor Green
Write-Host ""

# Run the application
& $javaPath -jar $jarPath

