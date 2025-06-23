CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT,
    join_date DATE,
    manager_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (manager_id) REFERENCES Employees(emp_id)  -- self-referencing FK
);


INSERT INTO Employees (emp_id, name, salary, department_id, join_date, manager_id) VALUES 
(1, 'Alice Johnson', 75000.00, 1, '2020-01-15', NULL),
(2, 'Astick Dutta', 95000.00, 1, '2020-01-15', NULL),
(3, 'Rittick Dutta', 75000.00, 1, '2020-01-15', 1),
(4, 'Sukannya Dutta', 100000.00, 4, '2021-04-12', 2),
(5, 'Ella Williams', 90000.00, 5, '2018-05-18', NULL),
(6, 'Frank Moore', 55000.00, 6, '2022-06-21', 3),
(7, 'Grace Taylor', 63000.00, 7, '2023-07-11', 4),
(8, 'Henry Thomas', 72000.00, 8, '2021-08-05', 5),
(9, 'Ivy White', 58000.00, 9, '2020-09-15', 6),
(10, 'Jake Harris', 77000.00, 10, '2019-10-01', 5),
(11, 'Kara Scott', 66000.00, 11, '2022-11-19', 7),
(12, 'Leo Young', 82000.00, 12, '2018-12-25', 3),
(13, 'Mia Adams', 53000.00, 13, '2021-01-30', 8),
(14, 'Noah Perez', 68000.00, 14, '2022-02-12', 9),
(15, 'Olivia Roberts', 74000.00, 15, '2020-03-17', 5),
(16, 'Paul Walker', 59000.00, 16, '2023-04-09', 11),
(17, 'Quinn Lewis', 88000.00, 17, '2017-05-20', NULL),
(18, 'Ruby Hall', 64000.00, 18, '2019-06-15', 10),
(19, 'Sam Allen', 70000.00, 19, '2020-07-25', 6),
(20, 'Tina Nelson', 76000.00, 20, '2021-08-18', 12),
(21, 'Uma King', 61000.00, 21, '2022-09-09', 17),
(22, 'Victor Wright', 69000.00, 22, '2023-10-03', 15),
(23, 'Wendy Green', 71000.00, 23, '2021-11-27', 16),
(24, 'Xavier Baker', 62000.00, 24, '2020-12-31', 21),
(25, 'Yara Campbell', 85000.00, 25, '2022-01-14', 18),
(26, 'Zack Martinez', 78000.00, 26, '2023-02-22', 22),
(27, 'Anna Lopez', 57000.00, 27, '2021-03-03', 25),
(28, 'Ben Turner', 69000.00, 28, '2020-04-07', 17),
(29, 'Clara Edwards', 74000.00, 29, '2019-05-01', 26),
(30, 'Derek Brooks', 81000.00, 30, '2022-06-12', 27);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

INSERT INTO Departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'Legal'),
(7, 'Customer Support'),
(8, 'Logistics'),
(9, 'Product Development'),
(10, 'Operations'),
(11, 'Procurement'),
(12, 'IT'),
(13, 'Security'),
(14, 'Research'),
(15, 'Data Analytics'),
(16, 'Public Relations'),
(17, 'Design'),
(18, 'Administration'),
(19, 'Quality Assurance'),
(20, 'Business Strategy'),
(21, 'Accounting'),
(22, 'Training'),
(23, 'Field Services'),
(24, 'Consulting'),
(25, 'Investor Relations'),
(26, 'Content Management'),
(27, 'Legal Affairs'),
(28, 'Talent Acquisition'),
(29, 'Business Development'),
(30, 'Executive Office');

CREATE TABLE Projects (
    emp_id INT,
    project_id INT,
    hours_worked INT,
    PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

CREATE TABLE Attendance (
    emp_id INT,
    work_date DATE,
    status VARCHAR(20),
    late BOOLEAN,
    PRIMARY KEY (emp_id, work_date),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

INSERT INTO Attendance (emp_id, work_date, status, late) VALUES
(1, '2024-06-01', 'Present', FALSE),
(1, '2024-06-02', 'Present', TRUE),
(2, '2024-06-01', 'Absent', FALSE),
(2, '2024-06-02', 'Present', FALSE),
(3, '2024-06-01', 'Leave', FALSE),
(3, '2024-06-02', 'Present', TRUE),
(4, '2024-06-01', 'Present', FALSE),
(4, '2024-06-02', 'Present', FALSE),
(5, '2024-06-01', 'Present', TRUE),
(5, '2024-06-02', 'Present', FALSE),
(6, '2024-06-01', 'Absent', FALSE),
(6, '2024-06-02', 'Present', TRUE),
(7, '2024-06-01', 'Present', FALSE),
(7, '2024-06-02', 'Leave', FALSE),
(8, '2024-06-01', 'Present', TRUE),
(8, '2024-06-02', 'Present', TRUE),
(9, '2024-06-01', 'Present', FALSE),
(9, '2024-06-02', 'Present', FALSE),
(10, '2024-06-01', 'Absent', FALSE),
(10, '2024-06-02', 'Present', TRUE);

INSERT INTO Projects (emp_id, project_id, hours_worked) VALUES
(1, 101, 40),
(2, 101, 35),
(3, 102, 42),
(4, 103, 30),
(5, 103, 25),
(6, 104, 38),
(7, 104, 40),
(8, 105, 32),
(9, 105, 28),
(10, 106, 45),
(11, 107, 36),
(12, 108, 20),
(13, 109, 50),
(14, 110, 22),
(15, 110, 25),
(16, 111, 30),
(17, 112, 33),
(18, 113, 29),
(19, 113, 31),
(20, 114, 39),
(21, 115, 35),
(22, 116, 44),
(23, 117, 27),
(24, 117, 31),
(25, 118, 34),
(26, 119, 41),
(27, 120, 30),
(28, 120, 26),
(29, 121, 37),
(30, 122, 40);


CREATE TABLE Salaries (
    emp_id INT,
    month DATE,
    base_salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2),
    PRIMARY KEY (emp_id, month),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

CREATE TABLE Leaves (
    emp_id INT,
    leave_date DATE,
    leave_type VARCHAR(50),
    PRIMARY KEY (emp_id, leave_date),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

INSERT INTO Leaves (emp_id, leave_date, leave_type) VALUES
(1, '2024-06-03', 'Sick Leave'),
(2, '2024-06-10', 'Casual Leave'),
(3, '2024-06-15', 'Paid Leave'),
(4, '2024-06-20', 'Casual Leave'),
(5, '2024-06-05', 'Sick Leave'),
(6, '2024-06-07', 'Paid Leave'),
(7, '2024-06-12', 'Sick Leave'),
(8, '2024-06-18', 'Casual Leave'),
(9, '2024-06-22', 'Paid Leave'),
(10, '2024-06-25', 'Sick Leave'),
(1, '2024-06-30', 'Casual Leave'),
(2, '2024-07-01', 'Sick Leave'),
(3, '2024-07-02', 'Paid Leave'),
(4, '2024-07-04', 'Sick Leave'),
(5, '2024-07-05', 'Casual Leave'),
(6, '2024-07-06', 'Paid Leave'),
(7, '2024-07-08', 'Sick Leave'),
(8, '2024-07-10', 'Casual Leave'),
(9, '2024-07-11', 'Paid Leave'),
(10, '2024-07-12', 'Sick Leave');
