USE school_db;

-- 1. Student Info with Department
SELECT 
    s.student_id, 
    CONCAT(s.first_name, ' ', s.last_name) AS student_name, 
    d.name AS department, 
    d.building
FROM students s
JOIN departments d USING (department_id);

-- 2. Subjects with Department Info
SELECT 
    sub.code, 
    sub.name AS subject, 
    sub.credits, 
    d.name AS department
FROM subjects sub
JOIN departments d USING (department_id);

-- 3. Teacher Skills (4NF Demo)
SELECT 
    t.first_name, 
    ts.skill
FROM teachers t 
JOIN teacher_skills ts USING(teacher_id);

-- 4. Complete Class Schedule (5NF Demo)
SELECT 
    sub.name AS subject, 
    CONCAT(t.first_name, ' ', t.last_name) AS teacher, 
    c.room, 
    c.semester
FROM classes c
JOIN subjects sub USING(subject_id)
JOIN teachers t USING(teacher_id)
ORDER BY c.semester, sub.name;

-- ==========================================
-- Concurrency & Transaction Demos
-- ==========================================

-- Check Salary Before Transaction
SELECT teacher_id, CONCAT(first_name, ' ', last_name) AS teacher, salary 
FROM teachers WHERE teacher_id = 1;

-- Fix 1: Atomic Update
UPDATE teachers SET salary = salary + 1000 WHERE teacher_id = 1;

-- Fix 2: Pessimistic lock (SELECT ... FOR UPDATE)
START TRANSACTION;
SELECT salary FROM teachers WHERE teacher_id = 1 FOR UPDATE;
UPDATE teachers SET salary = salary + 1000 WHERE teacher_id = 1;
COMMIT;

-- Fix 3: Isolation Levels Management
SELECT @@transaction_isolation;

-- SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
-- SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
