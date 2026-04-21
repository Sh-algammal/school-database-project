# 🧪 Sample Data (`sample-data/`)

Welcome to the sample data directory for the **School Management Database System**. This folder contains SQL scripts designed to populate the database with realistic dummy data for testing, development, and demonstration purposes.

## 📑 Contents

- 📄 **`insert_data.sql`:** A comprehensive script that inserts mock records into all 9 core tables and the 4NF bridge tables. The data includes:
  - 4 Academic Departments
  - 7 Subjects
  - 5 Teachers (with respective skills and subject assignments)
  - 6 Students
  - 7 Scheduled Classes (demonstrating the 5NF ternary relationship)
  - Enrollments, Exams, Grades, and Attendance records.

## 🚀 How to Use

**⚠️ Important:** You must execute the database schema before inserting this data to avoid foreign key constraint errors.

1. First, ensure the database and tables are created by running `schema.sql` located in the root directory.
2. Next, execute the data insertion script:
   ```sql
   SOURCE path/to/sample-data/insert_data.sql;
   ```
   (Or simply run the script through your preferred SQL GUI like MySQL Workbench, phpMyAdmin, or DBeaver).
3. Once populated, head over to the queries/ directory to test the database performance and relationships.

---
*Return to the [Main Project README](../README.md)*
