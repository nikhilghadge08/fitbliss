# Fitbliss Run Script
# This script helps you run the Fitbliss application

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   Fitbliss Fitness Tracker" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if MySQL password is set
$mysqlPassword = $env:MYSQL_PASSWORD
if (-not $mysqlPassword) {
    Write-Host "MySQL Password not set in environment." -ForegroundColor Yellow
    Write-Host "If your MySQL root user requires a password, set it using:" -ForegroundColor Yellow
    Write-Host "  `$env:MYSQL_PASSWORD = 'your_password'" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Attempting to run with empty password (default for XAMPP/WAMP)..." -ForegroundColor Yellow
    Write-Host ""
}

# Check if database exists
Write-Host "Checking MySQL connection..." -ForegroundColor Cyan
try {
    if ($mysqlPassword) {
        $result = mysql -u root -p"$mysqlPassword" -e "SHOW DATABASES LIKE 'fitbliss';" 2>&1
    } else {
        $result = mysql -u root -e "SHOW DATABASES LIKE 'fitbliss';" 2>&1
    }
    
    if ($result -match "fitbliss") {
        Write-Host "Database 'fitbliss' found!" -ForegroundColor Green
    } else {
        Write-Host "Database 'fitbliss' not found!" -ForegroundColor Red
        Write-Host "Please create the database and import Fitbliss-Database.sql" -ForegroundColor Yellow
        Write-Host "You can do this via phpMyAdmin or MySQL command line" -ForegroundColor Yellow
        Write-Host ""
        $continue = Read-Host "Continue anyway? (y/n)"
        if ($continue -ne "y") {
            exit
        }
    }
} catch {
    Write-Host "Could not check database. Make sure MySQL is running." -ForegroundColor Yellow
    Write-Host ""
}

# Run the application
Write-Host "Starting Fitbliss application..." -ForegroundColor Cyan
Write-Host ""

java -jar project\out\artifacts\Fitbliss\Fitbliss.jar


