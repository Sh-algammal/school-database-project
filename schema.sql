-- =========================
-- Classes Table
-- =========================
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(100) NOT NULL,
    grade_level VARCHAR(50)
);

-- =========================
-- Teachers Table
-- =========================
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    hire_date DATE
);

-- =========================
-- Students Table
-- =========================
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    class_id INT,
    
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- =========================
-- Subjects Table
-- =========================
CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL
);

-- =========================
-- Teacher_Subjects Table
-- =========================
CREATE TABLE Teacher_Subjects (
    teacher_id INT,
    subject_id INT,
    class_id INT,

    PRIMARY KEY (teacher_id, subject_id, class_id),

    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- =========================
-- Grades Table
-- =========================
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    exam_type VARCHAR(50),
    score INT CHECK (score BETWEEN 0 AND 100),

    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

-- =========================
-- Attendance Table
-- =========================
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY,
    student_id INT,
    class_id INT,
    date DATE,
    status VARCHAR(20),

    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- =========================
-- Users Table
-- =========================
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) CHECK (role IN ('admin','teacher','student'))
);
