# 🏥 Hospital Management System – MySQL

A SQL-based **Hospital Management System** developed using **MySQL** to manage patients, doctors, appointments, medical records, billing, and hospital departments.

This project demonstrates practical SQL concepts including **CRUD operations, filtering, sorting, grouping, aggregate functions, joins, subqueries, date/time functions, string manipulation, window functions, and CASE expressions**.

---

## 📌 Project Overview

The Hospital Management System is designed to organize and analyze hospital-related data using a relational database.

The database contains information about:

- 👨‍⚕️ Doctors
- 🧑‍🤝‍🧑 Patients
- 📅 Appointments
- 🏥 Medical Records
- 💰 Billing
- 🏢 Departments
- 🔗 Doctor-Department Relationships

The project focuses on applying SQL concepts to real-world healthcare data scenarios.

---

## 🛠️ Technologies Used

- **MySQL**
- SQL
- MySQL Workbench

---

## 🗂️ Database Structure

The project uses the following tables:

### 1. Patients
Stores patient information such as:

- Patient ID
- Name
- Date of Birth
- Gender
- Phone Number
- Email
- Address
- Registration Date

### 2. Doctors
Stores doctor information including:

- Doctor ID
- Doctor Name
- Specialization
- Phone Number
- Email
- Available Days
- Consultation Fee

### 3. Appointments
Stores appointment information:

- Appointment ID
- Patient ID
- Doctor ID
- Appointment Date
- Appointment Status

### 4. Medical Records
Stores patient treatment information:

- Record ID
- Patient ID
- Doctor ID
- Diagnosis
- Prescription
- Treatment Date

### 5. Billing
Stores billing and payment information:

- Invoice ID
- Patient ID
- Appointment ID
- Amount
- Payment Status
- Payment Date

### 6. Departments
Stores hospital departments such as:

- Cardiology
- Orthopedics
- Pediatrics
- Neurology
- Dermatology
- General Medicine

### 7. Doctor_Department
Creates the relationship between doctors and departments.

---

## 🔑 SQL Concepts Covered

### CRUD Operations
- CREATE
- INSERT
- SELECT
- UPDATE
- DELETE

### SQL Clauses
- WHERE
- HAVING
- LIMIT
- ORDER BY
- GROUP BY

### Aggregate Functions
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
- `COUNT()`

### Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN simulation using `UNION`

### Subqueries
Used to identify:

- Patients with highest treatment spending
- Doctors handling more than a specific number of patients
- Appointments based on doctor specialization

### Date & Time Functions
- `YEAR()`
- `MONTH()`
- `MONTHNAME()`
- `DATE_FORMAT()`
- `DATEDIFF()`
- `CURDATE()`

### String Functions
- `UPPER()`
- `LOWER()`
- `TRIM()`
- `REPLACE()`
- `CONCAT()`
- `COALESCE()`
- `NULLIF()`

### Window Functions
- `RANK()`
- `SUM() OVER()`
- `COUNT() OVER()`

### CASE Expressions
Used for:

- Patient risk classification
- Doctor experience categorization
- Discount/category logic

---

## 📊 Key SQL Analysis

The project performs several practical analyses, including:

- Finding patients registered within the last year
- Identifying the highest-paying patients
- Finding doctors charging more than ₹1,000
- Counting patients assigned to each doctor
- Calculating revenue by department
- Calculating total hospital revenue
- Finding the most visited doctor
- Calculating average consultation fees
- Ranking doctors based on completed appointments
- Calculating cumulative monthly revenue
- Creating running appointment totals
- Categorizing patient risk levels
- Categorizing doctors based on experience

---

## 📈 Example Analysis

### Total Revenue Collected

```sql
SELECT SUM(amount) AS total_revenue_collected
FROM Billing
WHERE payment_status = 'Paid';
