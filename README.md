# 🏫 School Management Database System

> A robust, fully normalized relational database system engineered to streamline school operations, including student and teacher management, academic subject assignments, grading, and attendance tracking.

---

## 📑 Table of Contents
- [Overview](#-overview)
- [Key Features](#-key-features)
- [Database Architecture](#️-database-architecture)
- [Data Normalization](#-data-normalization)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Tools & Technologies](#️-tools--technologies)
- [Future Improvements](#-future-improvements)
- [Team Members](#-team-members)

---

## 📖 Overview
This project delivers a highly optimized backend database structure for a modern educational institution. The database was meticulously designed utilizing rigorous normalization principles (up to the Third Normal Form - 3NF) to guarantee high data integrity, eliminate data redundancy, and ensure scalable performance as the institution grows.

---

## ✨ Key Features
- **Student & Teacher Management:** Securely store and query personal and academic records.
- **Class Organization:** Manage classroom assignments and schedules.
- **Subject Assignment:** Map teachers to specific subjects and students to their registered courses.
- **Grade Tracking System:** Accurately record and compute student academic performance.
- **Attendance Tracking:** Monitor daily student and staff attendance.
- **User Roles System:** Built-in foundation for system authentication and authorization access.

---

## 🗄️ Database Architecture
The database follows strict relational design principles. All entities are connected via properly indexed primary and foreign keys to maintain referential consistency. 

**Core Tables:**
* `Students`
* `Teachers`
* `Classes`
* `Subjects`
* `Grades`
* `Attendance`
* `Teacher_Subjects` *(Junction Table)*
* `Users` *(Authentication)*

---

## 📐 Data Normalization
The complete normalization journey is documented within the `normalization/` directory. By transforming the initial flat data structures, we ensured a robust architecture:
- **Unnormalized Form (UNF)**
- **First Normal Form (1NF)**
- **Second Normal Form (2NF)**
- **Third Normal Form (3NF)**

**Benefits Achieved:**
- [x] Drastically reduced data redundancy and storage waste.
- [x] Eradicated insertion, update, and deletion anomalies.
- [x] Improved query execution speed and overall system reliability.

---

## 📂 Project Structure
```text
school-database-project/
├── schema.sql
├── README.md
│
├── normalization/
│   ├── normalization.md
│   └── normalization.sql
│
├── docs/
│   └── ERD.png
│
├── sample-data/
│   └── insert_data.sql
│
└── queries/
    └── queries.sql
```

---

## 🚀 Getting Started

To run this project locally, follow these steps:

1. **Initialize the Schema:** Run `schema.sql` in your SQL environment to build the tables and relationships.
2. **Populate Data:** Execute `sample-data/insert_data.sql` to inject dummy data for testing purposes.
3. **Test the System:** Run the provided scripts in `queries/queries.sql` to test joins, aggregations, and data retrieval.

---

## 🛠️ Tools & Technologies
* **Database Engine:** MySQL
* **Language:** SQL (DDL, DML, DQL)
* **Design Methodology:** Database Normalization (1NF - 3NF)
* **Modeling Tool:** draw.io (for Entity Relationship Diagram)

---

## 🔮 Future Improvements
- [ ] Develop a full-stack web interface (Frontend + Backend APIs).
- [ ] Implement a comprehensive Role-Based Access Control (RBAC) authentication system.
- [ ] Build automated dashboards for administrative reports and analytics.
- [ ] Integrate a Machine Learning module for predicting student performance.

---

## 👥 Team Members
Developed with ❤️ by:
* [Shady Algammal](https://github.com/Sh-algammal)
* [Haitham Nofal](https://github.com/Haitham-nofal)
* [Sohail Emad](https://github.com/SohailEmad99)
* [Omar Andeel](https://github.com/OmarAndeel)
* [Zyad Elshopaky](https://github.com/ZyadElshopaky)
