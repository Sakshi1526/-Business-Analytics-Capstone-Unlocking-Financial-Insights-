CREATE database A1;
use A1;

-- Create the table

CREATE TABLE employees (
employee_id INT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
hire_date DATE,
salary DECIMAL(10,2)
);

select * from employees;

INSERT INTO employees VALUES (1, 'John', 'Doe', 'HR','2020-01-01',60000.00),
(2, 'Jane', 'Smith', 'IT','2019-05-15', 70000.00),
(3, 'Michael', 'Johnson', 'Finance','2021-03-20', 80000.00),
(4, 'Emily', 'Brown', 'Marketing','2018-11-10', 65000.00),
 (5, 'David', 'Wilson', 'Sales','2022-02-28', 75000.00),
 (6, 'Sarah', 'Martinez', 'HR','2023-07-10', 55000.00),
 (7, 'Christopher', 'Taylor', 'IT','2017-09-05', 90000.00),
 (8, 'Jessica', 'Anderson', 'Finance','2019-12-15', 85000.00),
 (9, 'Andrew', 'Thomas', 'Marketing','2020-08-20', 62000.00),
(10, 'Amanda', 'Roberts', 'Sales','2021-11-30',72000.00),
 (11, 'Matthew', 'Clark', 'HR','2018-04-25', 58000.00),
 (12, 'Lauren', 'Lewis', 'IT','2023-01-05',95000.00),
 (13, 'Daniel', 'Walker', 'Finance','2019-02-10', 82000.00),
(14, 'Olivia', 'Hill', 'Marketing','2022-05-15',  67000.00),
(15, 'James', 'White', 'Sales','2017-06-20', 77000.00),
 (16, 'Elizabeth', 'Allen', 'HR','2023-09-30', 60000.00),
 (17, 'Ryan', 'Young', 'IT','2020-10-12', 88000.00),
 (18, 'Jennifer', 'King', 'Finance','2018-08-08', 83000.00),
 (19, 'William', 'Scott', 'Marketing','2021-12-05', 64000.00),
(20, 'Stephanie', 'Green', 'Sales','2019-03-01', 74000.00),
 (21, 'Daniel', 'Baker', 'HR','2019-08-14',62000.00),
 (22, 'Sophia', 'Gonzalez', 'IT','2023-06-05', 72000.00),
 (23, 'William', 'Nelson', 'Finance','2020-09-30', 83000.00),
 (24, 'Isabella','Carter','Marketing','2018-02-18',67000.00),
 (25, 'Ethan', 'Perez', 'Sales','2021-07-20',77000.00),
(27,'Alexander', 'Turner', 'IT','2022-04-10', 88000.00),
 (28, 'Grace', 'King', 'Finance','2019-01-25', 93000.00),
 (29, 'Aiden', 'Cooper', 'Marketing','2023-08-05', 69000.00),
(30, 'Sofia', 'Stewart', 'Sales','2018-10-30', 80000.00),
(31, 'Benjamin', 'Morris', 'HR','2021-03-05', 62000.00),
 (32, 'Mia', 'Thompson', 'IT','2019-02-20',73000.00),
 (33, 'James', 'Hill', 'Finance','2022-09-15', 85000.00),
(34, 'Amelia', 'Mitchell', 'Marketing','2017-12-10', 70000.00),
(35, 'Michael', 'Carter', 'Sales','2021-11-25',82000.00),
(36, 'Evelyn', 'Flores', 'HR','2018-04-18',64000.00),
 (37, 'Logan', 'Parker', 'IT','2023-01-20',74000.00),
 (38, 'Abigail', 'Evans', 'Finance','2019-07-05', 86000.00),
(39, 'Lucas', 'Cook', 'Marketing','2022-12-30', 71000.00),
(40, 'Chloe', 'Gomez', 'Sales','2017-10-15', 83000.00);

select * from employees;

-- 1 List all employees who work in the Sales department.
SELECT first_name, last_name, department from employees where department = "Sales";

-- 2. Find all employees who were hired after January 1, 2020.
SELECT first_name, last_name, hire_date from employees where hire_date > date("2020/01/01");

-- 3. Display the first name, last name, and salary of employees who earn more than $70,000 per year.
SELECT first_name, last_name, salary from employees where salary > 70000.00;

-- 4. List employees who work in the HR department and were hired before January 1, 2022.
SELECT first_name, last_name, hire_date from employees where department = "HR" and department < date("2022/01/01");

-- 5. Find employees whose first name starts with 'J'.
SELECT first_name from employees where first_name like "J%";

-- 6. Display employees who work in the IT department and earn between $80,000 and $100,000 per year.
SELECT first_name, last_name, department, salary from employees where department like "IT" and salary between 80000.00 and 100000.00;

-- 7. List employees who work in the Finance department.
SELECT employee_id, first_name from employees where department like "Finance";

-- 8. Find employees whose first name starts with 'A'
SELECT employee_id, first_name from employees where first_name like "A%";
