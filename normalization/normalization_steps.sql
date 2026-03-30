-- =========================================
-- DATABASE NORMALIZATION (1NF → 2NF → 3NF)
-- =========================================


-- =========================================
-- 1NF (First Normal Form)
-- =========================================
-- Problem:
-- Data stored in one table with redundancy

CREATE TABLE StudentCourses_1NF (
    StudentID INT,
    StudentName VARCHAR(50),
    Course VARCHAR(50),
    Instructor VARCHAR(50)
);

-- Sample Data
INSERT INTO StudentCourses_1NF VALUES
(1, 'Ali', 'Math', 'Ahmed'),
(1, 'Ali', 'DB', 'Sara'),
(2, 'Omar', 'DB', 'Sara');


-- =========================================
-- 2NF (Second Normal Form)
-- =========================================
-- Solution:
-- Remove partial dependency
-- Separate Students table

-- Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Ali'),
(2, 'Omar');

-- StudentCourses Table (Composite Key)
CREATE TABLE StudentCourses_2NF (
    StudentID INT,
    Course VARCHAR(50),
    Instructor VARCHAR(50),
    
    PRIMARY KEY (StudentID, Course),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO StudentCourses_2NF VALUES
(1, 'Math', 'Ahmed'),
(1, 'DB', 'Sara'),
(2, 'DB', 'Sara');


-- =========================================
-- 3NF (Third Normal Form)
-- =========================================
-- Solution:
-- Remove transitive dependency
-- Separate Courses table

-- Courses Table
CREATE TABLE Courses (
    Course VARCHAR(50) PRIMARY KEY,
    Instructor VARCHAR(50)
);

INSERT INTO Courses VALUES
('Math', 'Ahmed'),
('DB', 'Sara');

-- Final Relation Table
CREATE TABLE StudentCourses_3NF (
    StudentID INT,
    Course VARCHAR(50),
    
    PRIMARY KEY (StudentID, Course),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (Course) REFERENCES Courses(Course)
);

INSERT INTO StudentCourses_3NF VALUES
(1, 'Math'),
(1, 'DB'),
(2, 'DB');


-- =========================================
-- SUMMARY
-- =========================================
-- 1NF → Removed multi-valued attributes
-- 2NF → Removed partial dependency
-- 3NF → Removed transitive dependency
