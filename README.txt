MAMATHA COLLEGE LAB EQUIPMENT MANAGEMENT SYSTEM

IMPORTANT DATABASE MATCH
This version uses ONLY the original columns:
Equipment: equipment_id, name, category, quantity, available_quantity, status
Users: user_id, name, email, password, role
Issue records: issue_id, equipment_id, user_id, issue_date, return_date, quantity, status
No description, location, department or phone fields are used.

SETUP
1. Keep your existing MySQL database and records. Do not import database.sql over an existing database.
2. In this folder create a file named .env (not .env.txt) with:
   PORT=3001
   DB_HOST=localhost
   DB_USER=root
   DB_PASSWORD=YOUR_EXISTING_MYSQL_PASSWORD
   DB_NAME=mamatha_lab_management
3. Open PowerShell in this folder.
4. Run: npm install
5. Run: npm start
6. Open: http://localhost:3001

If port 3001 is also busy, change PORT in .env to 3002 and restart.

FEATURES
- Dashboard counts and recent issue activity
- Equipment: add, view, search, filter, edit, delete
- Users: add, view, search, filter, edit, delete
- Issue desk: create issue, view, edit active issue, return, delete
- Issue/return operations update equipment available_quantity in MySQL
- Existing issue-history records prevent deleting referenced equipment/users

NOTES
- The images on the home and management pages load from Unsplash and require internet access.
- User records are stored with a NOT_REQUIRED password placeholder because this project version has no login/authentication flow. Do not use this as a production login system.
- database.sql is a reference schema for a fresh database only. Existing databases should be preserved.
