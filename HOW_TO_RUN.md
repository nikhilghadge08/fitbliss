# Fitbliss - Step-by-Step Running Guide

## Prerequisites

Before running the project, make sure you have:
- ✅ Java installed (Java 8 or higher)
- ✅ XAMPP or WAMP installed
- ✅ MySQL running via XAMPP/WAMP

---

## Step 1: Start MySQL Server

### Using XAMPP:
1. Open **XAMPP Control Panel**
2. Click **Start** button next to **MySQL**
3. Wait until MySQL status shows as **Running** (green)

### Using WAMP:
1. Open **WAMP Server**
2. Click on the WAMP icon in system tray
3. Select **Start All Services**
4. Wait until icon turns green

---

## Step 2: Set Up the Database

### Option A: Using phpMyAdmin (Recommended)

1. Open your web browser
2. Go to: **http://localhost/phpmyadmin**
3. Click on **New** in the left sidebar to create a new database
4. Enter database name: **fitbliss**
5. Select **utf8mb4_general_ci** as collation
6. Click **Create**
7. Select the **fitbliss** database from the left sidebar
8. Click on the **Import** tab at the top
9. Click **Choose File** button
10. Navigate to: `C:\Users\ghadg\Downloads\projects\Fitbliss\Fitbliss-Database.sql`
11. Click **Go** button at the bottom
12. Wait for "Import has been successfully finished" message

### Option B: Using MySQL Command Line

1. Open Command Prompt or PowerShell
2. Navigate to the project directory:
   ```powershell
   cd C:\Users\ghadg\Downloads\projects\Fitbliss
   ```
3. Run the import command:
   ```powershell
   mysql -u root fitbliss < Fitbliss-Database.sql
   ```

---

## Step 3: Verify Database Setup

Run this command to verify the database is set up correctly:

```powershell
mysql -u root -e "USE fitbliss; SHOW TABLES;"
```

You should see three tables:
- `exercises`
- `histories`
- `users`

---

## Step 4: Run the Application

### Method 1: Using the JAR File (Easiest)

1. Open Command Prompt or PowerShell
2. Navigate to the project directory:
   ```powershell
   cd C:\Users\ghadg\Downloads\projects\Fitbliss
   ```
3. Run the application:
   ```powershell
   java -jar project\out\artifacts\Fitbliss\Fitbliss.jar
   ```

### Method 2: Using the Helper Script

**PowerShell:**
```powershell
cd C:\Users\ghadg\Downloads\projects\Fitbliss
.\run-fitbliss.ps1
```

**Command Prompt (Batch):**
```cmd
cd C:\Users\ghadg\Downloads\projects\Fitbliss
run-fitbliss.bat
```

### Method 3: Double-Click (If JAR is Associated with Java)

1. Navigate to: `project\out\artifacts\Fitbliss\`
2. Double-click on **Fitbliss.jar**

---

## Step 5: Using the Application

### Sign In (Existing Users)

The database comes with pre-configured users:
- **Username:** Abhijeet
- **Username:** James
- **Username:** Oudish
- **Username:** Viman

**Note:** You'll need to know the passwords for these accounts, or create a new account.

### Sign Up (New User)

1. Click on **Sign Up** tab
2. Fill in the form:
   - Username (5-15 alphanumeric characters)
   - Password (5-15 characters)
   - Height (in cm)
   - Weight (in kg)
   - Birth Year
   - Gender
3. Click **Sign Up** button

---

## Troubleshooting

### Problem: "Error connecting to MySQL database"

**Solutions:**
1. Make sure MySQL is running in XAMPP/WAMP
2. Verify database name is exactly **fitbliss** (lowercase)
3. Check MySQL is accessible:
   ```powershell
   mysql -u root -e "SHOW DATABASES;"
   ```

### Problem: "Database doesn't exist"

**Solution:**
- Follow Step 2 to create and import the database

### Problem: "Access denied for user 'root'"

**Solution:**
If your MySQL root user has a password, set it as an environment variable:
```powershell
$env:MYSQL_PASSWORD = "your_password"
java -jar project\out\artifacts\Fitbliss\Fitbliss.jar
```

### Problem: Java not found

**Solution:**
1. Verify Java is installed:
   ```powershell
   java -version
   ```
2. If not installed, download from: https://www.oracle.com/java/technologies/downloads/
3. Make sure Java is added to your system PATH

### Problem: Application window doesn't appear

**Solution:**
1. Check Taskbar for the application window
2. Check if any error dialogs are hidden behind other windows
3. Try running from command line to see error messages

---

## Quick Start Checklist

- [ ] XAMPP/WAMP installed and MySQL started
- [ ] Database `fitbliss` created
- [ ] `Fitbliss-Database.sql` imported successfully
- [ ] Java installed and accessible
- [ ] Application JAR file exists at `project\out\artifacts\Fitbliss\Fitbliss.jar`
- [ ] Run: `java -jar project\out\artifacts\Fitbliss\Fitbliss.jar`

---

## Project Structure

```
Fitbliss/
├── Fitbliss-Database.sql          # Database schema and data
├── project/
│   ├── src/                       # Source code
│   ├── resources/                 # Images, fonts, etc.
│   └── out/
│       └── artifacts/
│           └── Fitbliss/
│               └── Fitbliss.jar   # Executable JAR file
├── run-fitbliss.ps1              # PowerShell run script
├── run-fitbliss.bat              # Batch run script
└── HOW_TO_RUN.md                # This guide
```

---

## Need Help?

If you encounter any issues:
1. Check the Troubleshooting section above
2. Verify all prerequisites are met
3. Check that MySQL is running and database is set up correctly
4. Try running from command line to see detailed error messages

---

**Enjoy using Fitbliss! 🏃‍♂️💪**

