# 🗄️ Database Normalization Task: Student Courses

> A comprehensive demonstration of the database normalization process from First Normal Form (1NF) to Third Normal Form (3NF). The goal is to reduce redundancy, eliminate dependency issues, and improve overall data integrity.

---

## 📑 Table of Contents
- [Overview](#-overview)
- [Initial Structure (1NF)](#1️⃣-initial-structure-1nf)
- [Second Normal Form (2NF)](#2️⃣-second-normal-form-2nf)
- [Third Normal Form (3NF)](#3️⃣-third-normal-form-3nf)
- [Final Structure & Conclusion](#🎯-final-structure--conclusion)
- [How to Run](#🚀-how-to-run)
- [Team Members](#👥-team-members)

---

## 📖 Overview
This task tracks the evolution of a simple student-course database. We start with a single, unnormalized table containing all data and step-by-step apply normalization rules to split the data into a well-structured relational design.

---

## 1️⃣ Initial Structure (1NF)

### ⚠️ The Problem
The initial table stores all data in a single, flat structure. 

* **Issues:**
  * Repetition of student names (e.g., 'Ali' is repeated for every course).
  * Redundant instructor data.
  * Poor scalability and difficult to maintain (insertion/update/deletion anomalies).

### 💻 Schema & SQL
**Table:** `StudentCourses_1NF`
- `StudentID`
- `StudentName`
- `Course`
- `Instructor`

```sql
CREATE TABLE StudentCourses_1NF (
    StudentID INT,
    StudentName VARCHAR(50),
    Course VARCHAR(50),
    Instructor VARCHAR(50)
);

INSERT INTO StudentCourses_1nf VALUES
(1, 'Ali', 'Math', 'Ahmed'),
(1, 'Ali', 'DB', 'Sara'),
(2, 'Omar', 'DB', 'Sara');
```

---

## 2️⃣ Second Normal Form (2NF)

### 🛠️ Changes Applied
- **Rule:** Remove Partial Dependency.
- **Action:** Separated student data into a dedicated table because `StudentName` depends ONLY on `StudentID`, not on the `Course`.

### 💻 Schema & SQL
We split the data into two tables:

**1. `Students` Table**
```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Ali'),
(2, 'Omar');
```

**2. `StudentCourses_2nf` Table**
```sql
CREATE TABLE StudentCourses_2nf (
    StudentID INT,
    Course VARCHAR(50),
    Instructor VARCHAR(50),
    PRIMARY KEY (StudentID, Course),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO StudentCourses_2nf VALUES
(1, 'Math', 'Ahmed'),
(1, 'DB', 'Sara'),
(2, 'DB', 'Sara');
```

* **Improvements:** Reduced redundancy, better separation of concerns, and a cleaner overall structure.

---

## 3️⃣ Third Normal Form (3NF)

### 🛠️ Changes Applied
- **Rule:** Remove Transitive Dependency.
- **Action:** Separated course and instructor data. `Instructor` depends on the `Course`, not on the `StudentID`.

### 💻 Schema & SQL
We extracted the course details into a new table:

**1. `Courses` Table**
```sql
CREATE TABLE Courses (
    Course VARCHAR(50) PRIMARY KEY,
    Instructor VARCHAR(50)
);

INSERT INTO Courses VALUES
('Math', 'Ahmed'),
('DB', 'Sara');
```

**2. `StudentCourses_3nf` Table** (Junction Table)
```sql
CREATE TABLE StudentCourses_3nf (
    StudentID INT,
    Course VARCHAR(50),
    PRIMARY KEY (StudentID, Course),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (Course) REFERENCES Courses(Course)
);

INSERT INTO StudentCourses_3nf VALUES
(1, 'Math'),
(1, 'DB'),
(2, 'DB');
```

* **Improvements:** Eliminated data duplication, improved data consistency, and made future updates and maintenance significantly easier.

---

## 🎯 Final Structure & Conclusion

The database is now fully normalized to **3NF**. We successfully transformed a single redundant table into a well-structured relational design consisting of:
1. 📦 **`Students`**
2. 📚 **`Courses`**
3. 🔗 **`StudentCourses_3nf`** *(Junction Table)*

This ensures strict data integrity, minimized redundancy, and highly efficient data management.

---

## 🚀 How to Run

1. Open your preferred SQL environment (e.g., MySQL, SQL Server, PostgreSQL).
2. Create the tables in the following order to respect Foreign Key constraints:
   - `Students`
   - `Courses`
   - `StudentCourses_3nf`
3. Execute the `INSERT INTO` statements provided in the 3NF section to populate the tables with sample data.
4. Run standard `SELECT` queries with `JOIN` statements to test the relationships.

---
