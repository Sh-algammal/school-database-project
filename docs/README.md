# 📂 Documentation (`docs/`)

Welcome to the documentation directory for the **School Management Database System**. This folder is dedicated to storing architectural diagrams, flowcharts, and visual aids that explain the database structure.

## 📑 Contents

- 🖼️ **`ERD.png` (Entity-Relationship Diagram):** A comprehensive visual representation of the database schema. It illustrates:
  - All 9 core tables (Departments, Subjects, Teachers, Students, Classes, Enrollments, Exams, Grades, Attendance).
  - Primary Keys (PK) and Foreign Keys (FK) mappings.
  - The relationships between entities (1:N and M:N relationships handled via bridge tables).
  - The implementation of the 5th Normal Form (5NF) through the central `classes` ternary table.

## 🔍 How to Use

The diagrams here serve as a technical blueprint. If you are a developer or a database administrator looking to understand or extend the schema, start by reviewing the `ERD.png` to grasp how data flows across the system before diving into the SQL scripts.

---
*Return to the [Main Project README](../README.md)*
