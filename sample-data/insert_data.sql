USE school_db;

INSERT INTO departments (name, building, budget) VALUES
('Computer Science', 'Block A', 500000),
('Mathematics', 'Block B', 300000),
('Physics', 'Block C', 350000),
('Business', 'Block D', 400000);

INSERT INTO subjects (code, name, credits, department_id) VALUES
('CS101', 'Intro to Programming', 3, 1),
('CS201', 'Data Structures', 3, 1),
('CS301', 'Database Systems', 3, 1),
('MATH101', 'Calculus I', 4, 2),
('MATH201', 'Linear Algebra', 3, 2),
('PHY101', 'Mechanics', 4, 3),
('BUS101', 'Business Management', 3, 4);

INSERT INTO teachers (first_name, last_name, email, phone, department_id, salary, hire_date) VALUES
('Ahmed', 'Hassan', 'ahmed.hassan@school.edu', '01011111111', 1, 15000, '2018-09-01'),
('Sara', 'Khalil', 'sara.khalil@school.edu', '01022222222', 1, 14000, '2019-01-15'),
('Omar', 'Farouk', 'omar.farouk@school.edu', '01033333333', 2, 13000, '2020-03-10'),
('Nadia', 'Salem', 'nadia.salem@school.edu', '01044444444', 3, 13500, '2017-08-20'),
('Khaled', 'Mostafa', 'khaled.mostafa@school.edu', '01055555555', 4, 12000, '2021-09-01');

INSERT INTO classes (subject_id, teacher_id, semester, room, capacity) VALUES
(1, 1, '2024-Fall', 'A101', 35),
(2, 1, '2024-Fall', 'A102', 30),
(3, 2, '2024-Fall', 'A103', 30),
(4, 3, '2024-Fall', 'B101', 40),
(5, 3, '2024-Fall', 'B102', 35),
(6, 4, '2024-Fall', 'C101', 40),
(7, 5, '2024-Fall', 'D101', 45);

INSERT INTO students (first_name, last_name, email, phone, date_of_birth, enrollment_date, department_id) VALUES
('Ali', 'Mohamed', 'ali.m@student.edu', '01111111111', '2002-03-15', '2022-09-01', 1),
('Mona', 'Ahmed', 'mona.a@student.edu', '01122222222', '2002-07-22', '2022-09-01', 1),
('Youssef', 'Ibrahim', 'youssef.i@student.edu', '01133333333', '2001-11-05', '2021-09-01', 2),
('Dina', 'Samir', 'dina.s@student.edu', '01144444444', '2003-01-30', '2023-09-01', 3),
('Karim', 'Nasser', 'karim.n@student.edu', '01155555555', '2002-06-18', '2022-09-01', 1),
('Layla', 'Fawzy', 'layla.f@student.edu', '01166666666', '2001-09-12', '2021-09-01', 4);

INSERT INTO enrollments (student_id, class_id, enroll_date) VALUES
(1, 1, '2024-09-01'), (1, 2, '2024-09-01'), (1, 3, '2024-09-01'),
(2, 1, '2024-09-01'), (2, 3, '2024-09-01'),
(3, 4, '2024-09-01'), (3, 5, '2024-09-01'),
(4, 6, '2024-09-01'),
(5, 1, '2024-09-01'), (5, 2, '2024-09-01'),
(6, 7, '2024-09-01');

INSERT INTO exams (class_id, exam_date, exam_type, max_score) VALUES
(1, '2024-11-01', 'Midterm', 50),
(1, '2025-01-10', 'Final', 100),
(2, '2024-11-05', 'Midterm', 50),
(3, '2024-11-08', 'Midterm', 50),
(4, '2024-11-03', 'Midterm', 50),
(6, '2024-11-06', 'Midterm', 50);

INSERT INTO grades (enrollment_id, exam_id, score) VALUES
(1, 1, 42), (1, 2, 88),
(4, 1, 38), (4, 2, 75),
(9, 1, 45), (9, 2, 92),
(2, 3, 35),
(3, 4, 47),
(6, 5, 40),
(8, 6, 44);

INSERT INTO attendance (enrollment_id, attend_date, status) VALUES
(1, '2024-09-03', 'Present'), (1, '2024-09-05', 'Present'), (1, '2024-09-10', 'Late'),
(4, '2024-09-03', 'Present'), (4, '2024-09-05', 'Absent'), (4, '2024-09-10', 'Present'),
(9, '2024-09-03', 'Present'), (9, '2024-09-05', 'Present'), (9, '2024-09-10', 'Present');

INSERT INTO teacher_skills VALUES
(1, 'Python'), (1, 'SQL'), (1, 'Java'),
(2, 'MySQL'), (2, 'NoSQL'),
(3, 'Statistics'), (3, 'MATLAB'),
(4, 'Physics Lab'), (4, 'LaTeX');

INSERT INTO teacher_subjects VALUES
(1, 1), (1, 2), (2, 3), (3, 4), (3, 5), (4, 6), (5, 7);
