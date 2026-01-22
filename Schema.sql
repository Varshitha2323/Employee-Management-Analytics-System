CREATE DATABASE EMPLOYEE_MANAGEMENT;
USE EMPLOYEE_MANAGEMENT;

CREATE TABLE DEPARTMENT (
DEPT_ID INT PRIMARY KEY,
DEPT_NAME VARCHAR(50),
LOACTION VARCHAR(50));

CREATE TABLE EMPLOYEE(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(50),
EMAIL VARCHAR(100),
PHONE_NO VARCHAR(100),
HIRE_DATE DATE,
SALARY INT,
DEPT_ID INT,
FOREIGN KEY(DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID) );

CREATE TABLE PROJECT(
PROJ_ID INT PRIMARY KEY,
PROJ_NAME VARCHAR(50),
START_DATE DATE,
END_DATE DATE,
DEPT_ID INT,
FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID));

CREATE TABLE WORKS_ON(
EMP_ID INT,
FOREIGN KEY (EMP_ID) REFERENCES EMPLOYEE(EMP_ID),
PROJ_ID INT, FOREIGN KEY (PROJ_ID) REFERENCES PROJECT(PROJ_ID));

INSERT INTO DEPARTMENT (DEPT_ID,DEPT_NAME,LOACTION) VALUES
(1, 'Engineering', 'Hyderabad'),
(2, 'HR', 'Bangalore'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Delhi'),
(5, 'Sales', 'Chennai'),
(6, 'Support', 'Pune');

ALTER TABLE DEPARTMENT CHANGE COLUMN LOACTION LOCATION VARCHAR(50)
;
INSERT INTO EMPLOYEE (emp_id, emp_name, email, phone_no, hire_date, salary, dept_id) VALUES
(101, 'Amit Sharma', 'amit@company.com', '9876543210', '2020-02-15', 75000, 1),
(102, 'Neha Verma', 'neha@company.com', '9876543211', '2021-06-10', 68000, 1),
(103, 'Rahul Mehta', 'rahul@company.com', '9876543212', '2019-09-20', 82000, 1),
(104, 'Priya Singh', 'priya@company.com', '9876543213', '2022-01-12', 45000, 2),
(105, 'Ankit Patel', 'ankit@company.com', '9876543214', '2021-11-01', 52000, 2),
(106, 'Sneha Iyer', 'sneha@company.com', '9876543215', '2018-07-05', 90000, 3),
(107, 'Rohit Kumar', 'rohit@company.com', '9876543216', '2020-03-18', 60000, 3),
(108, 'Kiran Rao', 'kiran@company.com', '9876543217', '2023-04-01', 48000, 4),
(109, 'Pooja Nair', 'pooja@company.com', '9876543218', '2022-08-22', 55000, 4),
(110, 'Vikram Joshi', 'vikram@company.com', '9876543219', '2019-12-30', 95000, 5),

(111, 'Arjun Reddy', 'arjun@company.com', '9876543220', '2020-05-14', 70000, 5),
(112, 'Meena Das', 'meena@company.com', '9876543221', '2021-09-09', 62000, 6),
(113, 'Suresh Babu', 'suresh@company.com', '9876543222', '2017-11-11', 88000, 6),
(114, 'Nikhil Jain', 'nikhil@company.com', '9876543223', '2023-02-02', 40000, 2),
(115, 'Divya Kapoor', 'divya@company.com', '9876543224', '2022-10-10', 53000, 3);

INSERT INTO PROJECT (proj_id, proj_name, start_date, end_date, dept_id) VALUES
(201, 'Payroll System', '2021-01-01', '2021-12-31', 3),
(202, 'Recruitment Portal', '2022-02-01', '2022-10-31', 2),
(203, 'E-Commerce App', '2020-05-01', '2021-05-01', 1),
(204, 'Customer Support Tool', '2021-06-15', '2022-06-15', 6),
(205, 'Marketing Dashboard', '2022-03-01', '2022-11-30', 4),
(206, 'Sales Analytics', '2021-07-01', '2022-01-31', 5),
(207, 'Inventory System', '2019-04-01', '2020-04-01', 1),
(208, 'HR Automation', '2023-01-01', NULL, 2),
(209, 'CRM Tool', '2022-05-01', NULL, 5),
(210, 'Finance Reporting', '2020-09-01', '2021-09-01', 3);
(116, 'Manoj Yadav', 'manoj@company.com', '9876543225', '2018-06-06', 97000, 1),
(117, 'Ritu Malhotra', 'ritu@company.com', '9876543226', '2020-08-08', 66000, 4),
(118, 'Karthik S', 'karthik@company.com', '9876543227', '2019-01-19', 72000, 5),
(119, 'Alok Mishra', 'alok@company.com', '9876543228', '2021-03-03', 58000, 6),
(120, 'Ananya Gupta', 'ananya@company.com', '9876543229', '2022-12-12', 50000, 2);

INSERT INTO WORKS_ON (emp_id, proj_id, hours) VALUES
(101, 203, 120),
(101, 207, 80),
(102, 203, 100),
(103, 207, 140),
(104, 202, 90),
(105, 202, 110),
(106, 201, 160),
(107, 201, 130),
(108, 205, 95),
(109, 205, 105),
(110, 206, 150),

(111, 206, 120),
(112, 204, 100),
(113, 204, 180),
(114, 202, 60),
(115, 210, 140),
(116, 203, 170),
(116, 207, 150),
(117, 205, 110),
(118, 206, 130),
(119, 204, 90),
(120, 208, 70);

alter table works_on add column hours int;


