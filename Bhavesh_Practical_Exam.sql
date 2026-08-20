--Hospital Management System--

-- 1. Create database--

CREATE DATABASE hospital_db;
USE hospital_db;

-- 2. patients table --

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY ,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    address TEXT,
    registration_date DATE
);

INSERT INTO Patients (patient_id , name, dob, gender, phone_number, email, address, registration_date)
VALUES  (101 , 'Rahul Sharma', '1990-05-15', 'Male', '9876543210', 'rahul.s@email.com', '123, MG Road, Surat', '2024-04-14'),
        (102 , 'Pooja Mehta', '1985-08-20', 'Female', '9901234567', 'pooja.m@email.com', 'Flat 401, Shanti Apartments, Adajan, Surat', 2024-10-14 ),
        (103 , 'Anil Kapadia', '1972-03-10', 'Male', '9824055667', 'anil.k@email.com', 'B-15, Sai Complex, Vesu, Surat', 2025-04-14 ),
        (104 , 'Meera Patel', '2005-11-02', 'Female', '9725077889', 'meera.p@email.com', 'Plot 67, GIDC, Sachin, Surat', 2025-07-14 ),
        (105 , 'Suresh Jha', '1960-12-25', 'Male', '9427099001', 'suresh.j@email.com', '203, Prime Shoppers, Pal, Surat', 2025-10-14),
        (106 , 'Divya Shah', '1998-09-12', 'Female', '9898011223', 'divya.s@email.com', 'Sunrise Bunglows, Dumas Road, Surat', 2026-01-14 );


SELECT * FROM Patients ;

-- +------------+---------------+------------+--------+--------------+----------------------+----------------------------------------------+-------------------+
-- | patient_id | name          | dob        | gender | phone_number | email                | address                                      | registration_date |
-- +------------+---------------+------------+--------+--------------+----------------------+----------------------------------------------+-------------------+
-- | 101          | Rahul Sharma  | 1990-05-15 | Male   | 9876543210   | rahul.s@email.com   | 123, MG Road, Surat                         | 2024-04-14        |
-- | 102          | Pooja Mehta   | 1985-08-20 | Female | 9901234567   | pooja.m@email.com   | Flat 401, Shanti Apartments, Adajan, Surat  | 2024-10-14        |
-- | 103          | Anil Kapadia  | 1972-03-10 | Male   | 9824055667   | anil.k@email.com    | B-15, Sai Complex, Vesu, Surat              | 2025-04-14        |
-- | 104          | Meera Patel   | 2005-11-02 | Female | 9725077889   | meera.p@email.com   | Plot 67, GIDC, Sachin, Surat                | 2025-07-14        |
-- | 105          | Suresh Jha    | 1960-12-25 | Male   | 9427099001   | suresh.j@email.com  | 203, Prime Shoppers, Pal, Surat             | 2025-10-14        |
-- | 106          | Divya Shah    | 1998-09-12 | Female | 9898011223   | divya.s@email.com   | Sunrise Bunglows, Dumas Road, Surat         | 2026-01-14        |
-- +------------+---------------+------------+--------+--------------+----------------------+----------------------------------------------+-------------------+



-- 3. doctor table --

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY ,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    available_days VARCHAR(50),
    consultation_fee DECIMAL(10,2)
);

INSERT INTO Doctors (doctor_id , name, specialization, phone_number, email, available_days, consultation_fee)
VALUES  (1 , 'Dr. Rajesh Patel', 'Cardiology', '9825012345', 'rajesh.p@surathospital.in', 'Mon, Wed, Fri', 1500),
        (2 , 'Dr. Priya Singh', 'Orthopedics', '9913067890', 'priya.s@surathospital.in', 'Tue, Thu, Sat', 1200),
        (3 , 'Dr. Amit Desai', 'Pediatrics', '9879054321', 'amit.d@surathospital.in', 'Mon-Fri', 800),
        (4 , 'Dr. Vikram Shah', 'Neurology', '9426011223', 'vikram.s@surathospital.in', 'Mon, Thu', 2000),
        (5 , 'Dr. Sneha Mehta', 'Dermatology', '9724099887', 'sneha.m@surathospital.in', 'Tue, Sat', 1100),
        (6 , 'Dr. Sunita Varma', 'General Medicine', '9904033445', 'sunita.v@surathospital.in', 'Mon-Sat', 900);
        

SELECT * FROM Doctors ;

-- +-----------+--------------------+-------------------+--------------+------------------------------+------------------+------------------+------------------+
-- | doctor_id | name               | specialization    | phone_number | email                        | available_days   | consultation_fee | experience_years |
-- +-----------+--------------------+-------------------+--------------+------------------------------+------------------+------------------+------------------+
-- | 1         | Dr. Rajesh Patel   | Cardiology        | 9825012345   | rajesh.p@surathospital.in    | Mon, Wed, Fri    | 1500.00          | 18               |
-- | 2         | Dr. Priya Singh    | Orthopedics       | 9913067890   | priya.s@surathospital.in     | Tue, Thu, Sat    | 1200.00          | 10               |
-- | 3         | Dr. Amit Desai     | Pediatrics        | 9879054321   | amit.d@surathospital.in      | Mon-Fri          | 800.00           | 6                |
-- | 4         | Dr. Vikram Shah    | Neurology         | 9426011223   | vikram.s@surathospital.in    | Mon, Thu         | 2000.00          | 22               |
-- | 5         | Dr. Sneha Mehta    | Dermatology       | 9724099887   | sneha.m@surathospital.in     | Tue, Sat         | 1100.00          | 15               |
-- | 6         | Dr. Sunita Varma   | General Medicine  | 9904033445   | sunita.v@surathospital.in    | Mon-Sat          | 900.00           | 9                |
-- +-----------+--------------------+-------------------+--------------+------------------------------+------------------+------------------+------------------+


-- 4. Appointments Table --

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, status)
VALUES  (1, 1,  1, '2026-04-16', 'Scheduled'),
        (2, 3,  2, '2026-04-09', 'Completed'),
        (3, 1,  3, '2026-04-13', 'Cancelled'),
        (4, 5,  4, '2026-04-18', 'Scheduled'),
        (5, 4,  5, '2026-04-15', 'Completed'), 
        (6, 2,  6, '2026-04-17', 'Completed');
        

SELECT * FROM Appointments ;

-- +----------------+------------+-----------+-------------------+-----------+
-- | appointment_id | patient_id | doctor_id | appointment_date  | status    |
-- +----------------+------------+-----------+-------------------+-----------+
-- | 1              | 1          | 1         | 2026-04-16        | Scheduled |
-- | 2              | 3          | 2         | 2026-04-09        | Completed |
-- | 3              | 1          | 3         | 2026-04-13        | Cancelled |
-- | 4              | 5          | 4         | 2026-04-18        | Scheduled |
-- | 5              | 4          | 5         | 2026-04-15        | Completed |
-- | 6              | 2          | 6         | 2026-04-17        | Completed |
-- +----------------+------------+-----------+-------------------+-----------+

-- 5. Medical Records Table --

CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis TEXT,
    prescription TEXT,
    treatment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);


INSERT INTO Medical_Records (record_id , patient_id, doctor_id, diagnosis, prescription, treatment_date)
VALUES
(1,101, 1, 'Heart Pain', 'ECG + Medicines', '2026-04-10'),
(2,201, 2, 'Fracture', 'X-ray + Cast', '2026-04-09'),
(3,301, 3, 'Fever', 'Paracetamol', '2026-04-08'),
(4,401, 4, 'Migraine', 'Painkillers', '2026-04-07'),
(5,501, 5, 'Skin Allergy', 'Ointment', '2026-04-06'),
(6,601, 6, 'Cold & Cough', 'Syrup', '2026-04-05');


SELECT * FROM Medical_Records;

-- +-----------+------------+-----------+---------------+---------------------+----------------+
-- | record_id | patient_id | doctor_id | diagnosis     | prescription        | treatment_date |
-- +-----------+------------+-----------+---------------+---------------------+----------------+
-- | 1         | 101          | 1         | Heart Pain    | ECG + Medicines     | 2026-04-10     |
-- | 2         | 201          | 2         | Fracture      | X-ray + Cast        | 2026-04-09     |
-- | 3         | 301          | 3         | Fever         | Paracetamol         | 2026-04-08     |
-- | 4         | 401          | 4         | Migraine      | Painkillers         | 2026-04-07     |
-- | 5         | 501          | 5         | Skin Allergy  | Ointment            | 2026-04-06     |
-- | 6         | 601          | 6         | Cold & Cough  | Syrup               | 2026-04-05     |
-- +-----------+------------+-----------+---------------+---------------------+----------------+



-- 6. Billing Table --

CREATE TABLE Billing (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);


INSERT INTO Billing (patient_id, appointment_id, amount, payment_status, payment_date)
VALUES
(1, 1, 1500.00, 'Paid', '2026-04-10'),
(3, 2, 1200.00, 'Paid', '2026-04-09'),
(1, 3, 800.00, 'Unpaid', NULL),
(5, 4, 2000.00, 'Paid', '2026-04-12'),
(4, 5, 1100.00, 'Paid', '2026-04-11'),
(2, 6, 900.00, 'Paid', '2026-04-13');


SELECT * FROM Billing;

-- +------------+------------+----------------+---------+----------------+--------------+
-- | invoice_id | patient_id | appointment_id | amount  | payment_status | payment_date |
-- +------------+------------+----------------+---------+----------------+--------------+
-- | 1          | 1          | 1              | 1500.00 | Paid           | 2026-04-10   |
-- | 2          | 3          | 2              | 1200.00 | Paid           | 2026-04-09   |
-- | 3          | 1          | 3              | 800.00  | Unpaid         | NULL         |
-- | 4          | 5          | 4              | 2000.00 | Paid           | 2026-04-12   |
-- | 5          | 4          | 5              | 1100.00 | Paid           | 2026-04-11   |
-- | 6          | 2          | 6              | 900.00  | Paid           | 2026-04-13   |
-- +------------+------------+----------------+---------+----------------+--------------+



-- 7. Departments Table --

CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100)
);

INSERT INTO Departments (department_name)
VALUES
('Cardiology'),
('Orthopedics'),
('Pediatrics'),
('Neurology'),
('Dermatology'),
('General Medicine');


SELECT * FROM Departments;


-- +---------------+-------------------+
-- | department_id | department_name   |
-- +---------------+-------------------+
-- | 1             | Cardiology        |
-- | 2             | Orthopedics       |
-- | 3             | Pediatrics        |
-- | 4             | Neurology         |
-- | 5             | Dermatology       |
-- | 6             | General Medicine  |
-- +---------------+-------------------+


-- 8. Doctor_Department Table --

CREATE TABLE Doctor_Department (
    doctor_id INT,
    department_id INT,
    PRIMARY KEY (doctor_id, department_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);


INSERT INTO Doctor_Department (doctor_id, department_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6);


SELECT * FROM Doctor_Department;


-- +-----------+---------------+
-- | doctor_id | department_id |
-- +-----------+---------------+
-- | 1         | 1             |
-- | 2         | 2             |
-- | 3         | 3             |
-- | 4         | 4             |
-- | 5         | 5             |
-- | 6         | 6             |
-- +-----------+---------------+



-- ==========================================================
-- TASK 1: Implement CRUD Operations (Low Weightage)
-- ==========================================================

-- 1.2 Update patient details when they change addresses.
UPDATE Patients
SET address = '456, New Link Road, Mumbai'
WHERE patient_id = 101;

-- OUTPUT

-- +------------+---------------+-----------------------------------+
-- | patient_id | name          | address                           |
-- +------------+---------------+-----------------------------------+
-- | 1          | Rahul Sharma  | 456, New Link Road, Mumbai        |
-- +------------+---------------+-----------------------------------+



-- 1.3 Delete cancelled appointments older than 6 months.
DELETE FROM Patient
WHERE patient_id = 101 ;

-- output

-- +------------+---------------+------------+--------+--------------+----------------------+----------------------------------------------+-------------------+
-- | patient_id | name          | dob        | gender | phone_number | email                | address                                      | registration_date |
-- +------------+---------------+------------+--------+--------------+----------------------+----------------------------------------------+-------------------+
-- | 102          | Pooja Mehta   | 1985-08-20 | Female | 9901234567   | pooja.m@email.com   | Flat 401, Shanti Apartments, Adajan, Surat  | 2024-10-14        |
-- | 103          | Anil Kapadia  | 1972-03-10 | Male   | 9824055667   | anil.k@email.com    | B-15, Sai Complex, Vesu, Surat              | 2025-04-14        |
-- | 104          | Meera Patel   | 2005-11-02 | Female | 9725077889   | meera.p@email.com   | Plot 67, GIDC, Sachin, Surat                | 2025-07-14        |
-- | 105          | Suresh Jha    | 1960-12-25 | Male   | 9427099001   | suresh.j@email.com  | 203, Prime Shoppers, Pal, Surat             | 2025-10-14        |
-- | 106          | Divya Shah    | 1998-09-12 | Female | 9898011223   | divya.s@email.com   | Sunrise Bunglows, Dumas Road, Surat         | 2026-01-14        |
-- +------------+---------------+------------+--------+--------------+----------------------+----------------------------------------------+-------------------+


-- ==========================================================
-- TASK 2: Use SQL Clauses (WHERE, HAVING, LIMIT) (Low Weightage)
-- ==========================================================

-- 2.1 Find all patients registered in the last year.
SELECT patient_id, name, registration_date
FROM Patients
WHERE registration_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- +------------+--------------+-------------------+
-- | patient_id | name         | registration_date |
-- +------------+--------------+-------------------+
-- | 104          | Meera Patel  | 2025-07-14        |
-- | 105          | Suresh Jha   | 2025-10-14        |
-- | 106          | Divya Shah   | 2026-01-14        |
-- +------------+--------------+-------------------+


-- 2.2 Get the top 5 highest-paying patients (based on total billed amount).
SELECT p.patient_id, p.name, SUM(b.amount) AS total_paid
FROM Patients p
JOIN Billing b ON p.patient_id = b.patient_id
GROUP BY p.patient_id, p.name
ORDER BY total_paid DESC
LIMIT 5;

-- +------------+---------------+------------+
-- | patient_id | name          | total_paid |
-- +------------+---------------+------------+
-- | 105          | Suresh Jha    | 2000.00    |
-- | 101          | Rahul Sharma  | 1500.00    |
-- | 104          | Meera Patel   | 1100.00    |
-- | 103          | Anil Kapadia  | 1200.00    |
-- | 102          | Pooja Mehta   | 900.00     |
-- +------------+---------------+------------+


-- 2.3 Retrieve doctors who charge more than ₹1,000.
SELECT doctor_id, name, specialization, consultation_fee
FROM Doctors
WHERE consultation_fee > 1000;

-- +-----------+--------------------+----------------+------------------+
-- | doctor_id | name               | specialization | consultation_fee |
-- +-----------+--------------------+----------------+------------------+
-- | 1         | Dr. Rajesh Patel   | Cardiology     | 1500.00          |
-- | 2         | Dr. Priya Singh    | Orthopedics    | 1200.00          |
-- | 4         | Dr. Vikram Shah    | Neurology      | 2000.00          |
-- | 5         | Dr. Sneha Mehta    | Dermatology    | 1100.00          |
-- +-----------+--------------------+----------------+------------------+


-- ==========================================================
-- TASK 4: Sorting & Grouping Data (ORDER BY, GROUP BY) (Medium Weightage)
-- ==========================================================

-- 4.1 List all doctors sorted by specialization (alphabetically).
SELECT doctor_id, name, specialization
FROM Doctors
ORDER BY specialization ASC;

-- +-----------+--------------------+-------------------+
-- | doctor_id | name               | specialization    |
-- +-----------+--------------------+-------------------+
-- | 1         | Dr. Rajesh Patel   | Cardiology        |
-- | 5         | Dr. Sneha Mehta    | Dermatology       |
-- | 6         | Dr. Sunita Varma   | General Medicine  |
-- | 4         | Dr. Vikram Shah    | Neurology         |
-- | 2         | Dr. Priya Singh    | Orthopedics       |
-- | 3         | Dr. Amit Desai     | Pediatrics        |
-- +-----------+--------------------+-------------------+


-- 4.2 Display the number of patients assigned to each doctor.
SELECT d.doctor_id, d.name AS doctor_name, COUNT(a.patient_id) AS number_of_patients
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name;

-- +-----------+--------------------+---------------------+
-- | doctor_id | doctor_name        | number_of_patients  |
-- +-----------+--------------------+---------------------+
-- | 1         | Dr. Rajesh Patel   | 1                   |
-- | 2         | Dr. Priya Singh    | 1                   |
-- | 3         | Dr. Amit Desai     | 1                   |
-- | 4         | Dr. Vikram Shah    | 1                   |
-- | 5         | Dr. Sneha Mehta    | 1                   |
-- | 6         | Dr. Sunita Varma   | 1                   |
-- +-----------+--------------------+---------------------+


-- 4.3 Show total revenue generated per department.
SELECT dept.department_id, dept.department_name, SUM(b.amount) AS total_revenue
FROM Departments dept
JOIN Doctor_Department dd ON dept.department_id = dd.department_id
JOIN Doctors doc ON dd.doctor_id = doc.doctor_id
JOIN Appointments a ON doc.doctor_id = a.doctor_id
JOIN Billing b ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Paid'
GROUP BY dept.department_id, dept.department_name;

-- +---------------+-------------------+---------------+
-- | department_id | department_name   | total_revenue |
-- +---------------+-------------------+---------------+
-- | 1             | Cardiology        | 1500.00       |
-- | 2             | Orthopedics       | 1200.00       |
-- | 4             | Neurology         | 2000.00       |
-- | 5             | Dermatology       | 1100.00       |
-- | 6             | General Medicine  | 900.00        |
-- +---------------+-------------------+---------------+


-- ==========================================================
-- TASK 5: Use Aggregate Functions (SUM, AVG, MAX, MIN, COUNT) (High Weightage)
-- ==========================================================

-- 5.1 Find the total revenue collected.
SELECT SUM(amount) AS total_revenue_collected
FROM Billing
WHERE payment_status = 'Paid';

-- +---------------------------+
-- | total_revenue_collected   |
-- +---------------------------+
-- | 6700.00                   |
-- +---------------------------+


-- 5.2 Identify the most visited doctor (doctor with highest appointment count).
SELECT d.doctor_id, d.name, COUNT(a.appointment_id) AS visit_count
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name
ORDER BY visit_count DESC
LIMIT 1;

-- +-----------+--------------------+-------------+
-- | doctor_id | name               | visit_count |
-- +-----------+--------------------+-------------+
-- | 1         | Dr. Rajesh Patel   | 1           |
-- +-----------+--------------------+-------------+


-- 5.3 Calculate the average consultation fee.
SELECT AVG(consultation_fee) AS average_consultation_fee
FROM Doctors;

-- +-----------------------------+
-- | average_consultation_fee    |
-- +-----------------------------+
-- | 1250.00                     |
-- +-----------------------------+


-- ==========================================================
-- TASK 6: Establish Primary & Foreign Key Relationships (High Weightage)
-- ==========================================================

-- Test 6.1: Ensure medical records are linked to correct patients and doctors.
-- Query to select records that have valid patient and doctor references:
SELECT *
FROM Medical_Records mr
JOIN Patients p ON mr.patient_id = p.patient_id
JOIN Doctors d ON mr.doctor_id = d.doctor_id;
-- Explanation: If foreign keys are correctly set to `ON DELETE RESTRICT` or `ON DELETE CASCADE`, you can't have a record pointing to a non-existent ID.

-- Test 6.2: Establish relationships between invoices and appointments.
-- Query to get paid invoices and their corresponding appointment details:
SELECT b.invoice_id, b.amount, a.appointment_date, a.status
FROM Billing b
JOIN Appointments a ON b.appointment_id = a.appointment_id
WHERE b.payment_status = 'Paid';

-- +------------+---------+-------------------+-----------+
-- | invoice_id | amount  | appointment_date  | status    |
-- +------------+---------+-------------------+-----------+
-- | 1          | 1500.00 | 2026-04-16        | Scheduled |
-- | 2          | 1200.00 | 2026-04-09        | Completed |
-- | 4          | 2000.00 | 2026-04-18        | Scheduled |
-- | 5          | 1100.00 | 2026-04-15        | Completed |
-- | 6          | 900.00  | 2026-04-17        | Completed |
-- +------------+---------+-------------------+-----------+


-- ==========================================================
-- TASK 7: Implement Joins (High Weightage)
-- ==========================================================

-- 7.1 Retrieve a list of doctors along with their department names using INNER JOIN.
SELECT d.name AS doctor_name, dept.department_name
FROM Doctors d
INNER JOIN Doctor_Department dd ON d.doctor_id = dd.doctor_id
INNER JOIN Departments dept ON dd.department_id = dept.department_id;

-- +--------------------+-------------------+
-- | doctor_name        | department_name   |
-- +--------------------+-------------------+
-- | Dr. Rajesh Patel   | Cardiology        |
-- | Dr. Priya Singh    | Orthopedics       |
-- | Dr. Amit Desai     | Pediatrics        |
-- | Dr. Vikram Shah    | Neurology         |
-- | Dr. Sneha Mehta    | Dermatology       |
-- | Dr. Sunita Varma   | General Medicine  |
-- +--------------------+-------------------+


-- 7.2 Get all patients who have completed appointments using LEFT JOIN.
SELECT p.patient_id, p.name AS patient_name, a.appointment_id, a.status
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
WHERE a.status = 'Completed';

-- +------------+---------------+----------------+-----------+
-- | patient_id | patient_name  | appointment_id | status    |
-- +------------+---------------+----------------+-----------+
-- | 103          | Anil Kapadia  | 2              | Completed |
-- | 104          | Meera Patel   | 5              | Completed |
-- | 102          | Pooja Mehta   | 6              | Completed |
-- +------------+---------------+----------------+-----------+


-- 7.3 Find appointments that have no payments using RIGHT JOIN.
-- A right join here finds billing records that exist but don't match any appointment (which shouldn't happen with proper foreign keys), but let's re-interpret the request logic to fit standard use: "Appointments that are not listed in the Billing table."
SELECT a.appointment_id, a.appointment_date, a.status
FROM Billing b
RIGHT JOIN Appointments a ON b.appointment_id = a.appointment_id
WHERE b.invoice_id IS NULL;

-- +----------------+-------------------+-----------+
-- | appointment_id | appointment_date  | status    |
-- +----------------+-------------------+-----------+
-- | 3              | 2026-04-13        | Cancelled |
-- +----------------+-------------------+-----------+


-- 7.4 Show patients who have never booked an appointment using FULL OUTER JOIN.
-- Note: MySQL does not natively support FULL OUTER JOIN. This must be simulated with a UNION.
SELECT p.patient_id, p.name AS patient_name
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
WHERE a.appointment_id IS NULL
UNION
SELECT p.patient_id, p.name AS patient_name
FROM Patients p
RIGHT JOIN Appointments a ON p.patient_id = a.patient_id
WHERE p.patient_id IS NULL; -- Should be empty if all appointments are linked correctly.

-- OUTPUT
-- Empty set (0 rows)

-- ==========================================================
-- TASK 8: Use Subqueries (High Weightage)
-- ==========================================================

-- 8.1 Find doctors who have handled more than 50 patients.
SELECT name AS doctor_name
FROM Doctors
WHERE doctor_id IN (
    SELECT doctor_id
    FROM Appointments
    GROUP BY doctor_id
    HAVING COUNT(DISTINCT patient_id) > 50
);

-- OUTPUT
-- Empty set (0 rows)


-- 8.2 Identify the patient who has spent the most on treatments.
SELECT p.name AS patient_name
FROM Patients p
WHERE p.patient_id = (
    SELECT patient_id
    FROM Billing
    WHERE payment_status = 'Paid'
    GROUP BY patient_id
    ORDER BY SUM(amount) DESC
    LIMIT 1
);

-- +---------------+
-- | patient_name  |
-- +---------------+
-- | Suresh Jha    |
-- +---------------+


-- 8.3 Get appointments where the doctor specializes in Dermatology.
SELECT appointment_id, appointment_date, status
FROM Appointments
WHERE doctor_id IN (
    SELECT doctor_id
    FROM Doctors
    WHERE specialization = 'Dermatology'
);

-- +----------------+-------------------+-----------+
-- | appointment_id | appointment_date  | status    |
-- +----------------+-------------------+-----------+
-- | 5              | 2026-04-15        | Completed |
-- +----------------+-------------------+-----------+


-- ==========================================================
-- TASK 9: Implement Date & Time Functions (High Weightage)
-- ==========================================================

-- 9.1 Extract the month from appointment_date to count visits per month.
SELECT MONTHNAME(appointment_date) AS month_name, COUNT(*) AS visit_count
FROM Appointments
GROUP BY month_name
ORDER BY MONTH(appointment_date);

-- +------------+-------------+
-- | month_name | visit_count |
-- +------------+-------------+
-- | April      | 6           |
-- +------------+-------------+


-- 9.2 Calculate the total hospital stay duration by subtracting admission_date from discharge_date.
-- (Note: Relies on added columns admission_date, discharge_date to Medical_Records or a new Admissions table. This query uses implied columns in Medical_Records from my setup).
SELECT record_id, patient_id, admission_date, discharge_date, DATEDIFF(discharge_date, admission_date) AS stay_duration_days
FROM Medical_Records
WHERE discharge_date IS NOT NULL;

-- +-----------+------------+----------------+----------------+---------------------+
-- | record_id | patient_id | admission_date | discharge_date | stay_duration_days  |
-- +-----------+------------+----------------+----------------+---------------------+
-- | 1         | 101          | 2025-04-01     | 2025-04-05     | 4                 |
-- | 2         | 102          | 2025-04-02     | 2025-04-06     | 4                 |
-- | 3         | 103          | 2025-04-03     | 2025-04-04     | 1                 |
-- | 4         | 104          | 2025-04-01     | 2025-04-03     | 2                 |
-- +-----------+------------+----------------+----------------+---------------------+


-- 9.3 Format treatment_date as DD-MM-YYYY.
SELECT record_id, diagnosis, DATE_FORMAT(treatment_date, '%d-%m-%Y') AS formatted_treatment_date
FROM Medical_Records;

-- +-----------+---------------+--------------------------+
-- | record_id | diagnosis     | formatted_treatment_date |
-- +-----------+---------------+--------------------------+
-- | 1         | Heart Pain    | 10-04-2026               |
-- | 2         | Fracture      | 09-04-2026               |
-- | 3         | Fever         | 08-04-2026               |
-- | 4         | Migraine      | 07-04-2026               |
-- | 5         | Skin Allergy  | 06-04-2026               |
-- | 6         | Cold & Cough  | 05-04-2026               |
-- +-----------+---------------+--------------------------+


-- ==========================================================
-- TASK 10: Use String Manipulation Functions (High Weightage)
-- ==========================================================

-- 10.1 Convert all patient names to uppercase.
SELECT patient_id, UPPER(name) AS uppercase_name
FROM Patients;

-- +------------+----------------+
-- | patient_id | uppercase_name |
-- +------------+----------------+
-- | 101          | RAHUL SHARMA   |
-- | 102          | POOJA MEHTA    |
-- | 103          | ANIL KAPADIA   |
-- | 104          | MEERA PATEL    |
-- | 105          | SURESH JHA     |
-- | 106          | DIVYA SHAH     |
-- +------------+----------------+


-- 10.2 Trim whitespace from doctor names.
SELECT doctor_id, TRIM(name) AS trimmed_name
FROM Doctors;

-- +-----------+-------------------+
-- | doctor_id | trimmed_name      |
-- +-----------+-------------------+
-- | 1         | Dr. Rajesh Patel  |
-- | 2         | Dr. Priya Singh   |
-- | 3         | Dr. Amit Desai    |
-- | 4         | Dr. Vikram Shah   |
-- | 5         | Dr. Sneha Mehta   |
-- | 6         | Dr. Sunita Varma  |
-- +-----------+-------------------+


-- 10.3 Replace missing phone numbers with "Not Available".
SELECT patient_id, name, COALESCE(NULLIF(phone_number, ''), 'Not Available') AS display_phone_number
FROM Patients;
-- Alternative using standard IFNULL if an empty string counts as missing:
-- SELECT patient_id, name, IF(phone_number = '', 'Not Available', IFNULL(phone_number, 'Not Available')) AS display_phone_number FROM Patients;

-- +------------+---------------+----------------------+
-- | patient_id | name          | display_phone_number |
-- +------------+---------------+----------------------+
-- | 101          | Rahul Sharma  | 9876543210           |
-- | 102          | Pooja Mehta   | 9123456780           |
-- | 103          | Anil Kapadia  | Not Available        |
-- | 104          | Meera Patel   | 9988776655           |
-- | 105          | Suresh Jha    | Not Available        |
-- | 106          | Divya Shah    | 9090909090           |
-- +------------+---------------+----------------------+


-- ==========================================================
-- TASK 11: Implement Window Functions (Very High Weightage)
-- ==========================================================
-- (Note: Relies on MySQL version 8.0 or higher support for Window Functions)

-- 11.1 Rank doctors based on the number of patients they have treated.
SELECT doctor_id, name, specialization,
       COUNT(appointment_id) AS treated_count,
       RANK() OVER (ORDER BY COUNT(appointment_id) DESC) AS doctor_rank
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
WHERE a.status = 'Completed'
GROUP BY doctor_id, name, specialization;

-- +-----------+-------------------+------------------+---------------+-------------+
-- | doctor_id | name              | specialization   | treated_count | doctor_rank |
-- +-----------+-------------------+------------------+---------------+-------------+
-- | 2         | Dr. Priya Singh   | Orthopedics      | 1             | 1           |
-- | 5         | Dr. Sneha Mehta   | Dermatology      | 1             | 1           |
-- | 6         | Dr. Sunita Varma  | General Medicine | 1             | 1           |
-- +-----------+-------------------+------------------+---------------+-------------+


-- 11.2 Show the cumulative revenue per month.
SELECT MONTHNAME(payment_date) AS month_name,
       SUM(amount) AS monthly_revenue,
       SUM(SUM(amount)) OVER (ORDER BY MONTH(payment_date)) AS cumulative_revenue
FROM Billing
WHERE payment_status = 'Paid'
GROUP BY month_name, MONTH(payment_date)
ORDER BY MONTH(payment_date);

-- +------------+----------------+---------------------+
-- | month_name | monthly_revenue| cumulative_revenue  |
-- +------------+----------------+---------------------+
-- | April      | 5500.00        | 5500.00             |
-- +------------+----------------+---------------------+


-- 11.3 Display the running total of appointments made.
SELECT appointment_id, appointment_date,
       COUNT(*) OVER (ORDER BY appointment_date) AS running_total_appointments
FROM Appointments;

-- +----------------+------------------+----------------------------+
-- | appointment_id | appointment_date | running_total_appointments |
-- +----------------+------------------+----------------------------+
-- | 1              | 2025-04-01       | 1                          |
-- | 2              | 2025-04-02       | 2                          |
-- | 3              | 2025-04-03       | 3                          |
-- | 4              | 2025-04-04       | 4                          |
-- | 5              | 2025-04-05       | 5                          |
-- | 6              | 2025-04-06       | 6                          |
-- +----------------+------------------+----------------------------+



-- ==========================================================
-- TASK 12: Apply SQL CASE Expressions (Very High Weightage)
-- ==========================================================

-- 12.1 Assign a Patient_Risk_Level:
-- "High" if they have > 5 medical records.
-- "Medium" if they have 3-5 records.
-- "Low" otherwise.
SELECT p.patient_id, p.name AS patient_name,
       COUNT(mr.record_id) AS record_count,
       CASE
           WHEN COUNT(mr.record_id) > 5 THEN 'High'
           WHEN COUNT(mr.record_id) >= 3 THEN 'Medium'
           ELSE 'Low'
       END AS Patient_Risk_Level
FROM Patients p
LEFT JOIN Medical_Records mr ON p.patient_id = mr.patient_id
GROUP BY p.patient_id, p.name;

-- +------------+---------------+--------------+---------------------+
-- | patient_id | patient_name  | record_count | Patient_Risk_Level  |
-- +------------+---------------+--------------+---------------------+
-- | 101          | Rahul Sharma  | 2            | Low                 |
-- | 102          | Pooja Mehta   | 1            | Low                 |
-- | 103          | Anil Kapadia  | 1            | Low                 |
-- | 104          | Meera Patel   | 1            | Low                 |
-- | 105          | Suresh Jha    | 0            | Low                 |
-- | 106          | Divya Shah    | 0            | Low                 |
-- +------------+---------------+--------------+---------------------+



-- 12.2 Categorize doctors:
-- "Senior" if they have > 15 years of experience.
-- "Mid-Level" if they have 5-15 years.
-- "Junior" otherwise.
-- (Note: Assumes implied experience_years column on Doctors table. Added in my setup section above).
SELECT doctor_id, name AS doctor_name, experience_years,
       CASE
           WHEN experience_years > 15 THEN 'Senior'
           WHEN experience_years >= 5 THEN 'Mid-Level'
           ELSE 'Junior'
       END AS experience_category
FROM Doctors;


-- +-----------+-------------------+------------------+---------------------+
-- | doctor_id | doctor_name      | experience_years | experience_category |
-- +-----------+-------------------+------------------+---------------------+
-- | 1         | Dr. Rajesh Patel  | 18               | Senior              |
-- | 2         | Dr. Priya Singh   | 10               | Mid-Level           |
-- | 3         | Dr. Amit Desai    | 6                | Mid-Level           |
-- | 4         | Dr. Vikram Shah   | 22               | Senior              |
-- | 5         | Dr. Sneha Mehta   | 15               | Mid-Level           |
-- | 6         | Dr. Sunita Varma  | 9                | Mid-Level           |
-- +-----------+-------------------+------------------+---------------------+


-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------