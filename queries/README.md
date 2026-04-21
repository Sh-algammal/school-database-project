# 🔍 Database Queries (`queries/`)

Welcome to the queries directory for the **School Management Database System**. This folder contains the SQL scripts necessary to test, retrieve, and validate data across the fully normalized database schema.

## 📑 Contents

- 📄 **`queries.sql`:** A collection of advanced SQL statements organized into two main sections:
  1. **Data Retrieval (Joins):** - Queries demonstrating 2NF and 3NF compliance (e.g., fetching student and subject information with their respective departments).
     - Queries demonstrating 4NF compliance (e.g., retrieving independent multi-valued facts like teacher skills).
     - Queries demonstrating 5NF compliance (e.g., fetching the complete class schedule using the central ternary `classes` table).
  2. **Transactions & Concurrency:**
     - Practical demonstrations of fixing the **Lost Update** anomaly using Atomic Updates and Pessimistic Locking (`SELECT ... FOR UPDATE`).
     - Commands to view and manage MySQL Transaction Isolation Levels to handle read anomalies (Dirty Read, Non-Repeatable Read, Phantom Read).

## 🚀 How to Use

1. Ensure your database is built (`schema.sql`) and populated with sample data (`sample-data/insert_data.sql`).
2. Open your preferred SQL client and execute the commands in `queries.sql` sequentially to observe the output and test the database's referential integrity.
3. For the transaction demos, it is highly recommended to run them in two parallel SQL sessions (Session A and Session B) to truly observe the locking mechanisms and concurrency controls in action.

---
*Return to the [Main Project README](../README.md)*
