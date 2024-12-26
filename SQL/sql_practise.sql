-- Creating Database
CREATE DATABASE DB1;

-- Using Database DB1
USE DB1;

-- Creating Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Salary DECIMAL(10, 2),
    HireDate DATE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Creating Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Inserting Records in Departments table
INSERT INTO Departments (DepartmentName) VALUES
('Human Resources'),
('Finance'),
('Engineering'),
('Marketing'),
('Sales');

-- Inserting Records in Employees table
INSERT INTO Employees (FirstName, LastName, Email, Salary, HireDate, DepartmentID) VALUES
('Alice', 'Smith', 'alice.smith@example.com', 55000.00, '2022-01-15', 1),
('Bob', 'Johnson', 'bob.johnson@example.com', 62000.00, '2021-05-22', 2),
('Charlie', 'Brown', 'charlie.brown@example.com', 70000.00, '2020-08-10', 3),
('Diana', 'Taylor', 'diana.taylor@example.com', 48000.00, '2023-03-12', 4),
('Eve', 'Miller', 'eve.miller@example.com', 52000.00, '2022-11-01', 1),
('Frank', 'Davis', 'frank.davis@example.com', 61000.00, '2019-04-05', 3),
('Grace', 'Wilson', 'grace.wilson@example.com', 53000.00, '2022-07-25', 5),
('Hank', 'Moore', 'hank.moore@example.com', 58000.00, '2021-09-19', 2),
('Ivy', 'Anderson', 'ivy.anderson@example.com', 49000.00, '2023-06-30', 4),
('Jack', 'Thomas', 'jack.thomas@example.com', 68000.00, '2020-12-15', 3);

-- Update Query
UPDATE Employees SET Salary = 50000.00 WHERE FirstName='Diana';


-- SELECT statements
SELECT * FROM Employees;
SELECT * FROM Employees WHERE DepartmentID = 3;

--- AND, OR, NOT
SELECT * FROM Employees WHERE Salary > 60000 AND HireDate > '2021-01-01';
SELECT * FROM Employees WHERE DepartmentID = 1 OR DepartmentID = 5;
SELECT * FROM Employees WHERE NOT DepartmentID = 2;

-- ORDER BY
SELECT * FROM Employees ORDER BY Salary DESC;

-- Aggregate Functions
SELECT DepartmentID, SUM(Salary) AS TotalSalary FROM Employees GROUP BY DepartmentID;	-- SUM
SELECT AVG(Salary) AS AvgSalary FROM Employees;		-- AVG
SELECT DepartmentID, COUNT(*) AS EmployeeCount FROM Employees GROUP BY DepartmentID;	-- COUNT
SELECT MAX(Salary) AS MaxSalary FROM Employees;		-- MAX
SELECT MIN(Salary) AS MinSalary FROM Employees;		-- MIN

-- HAVING Clause
SELECT DepartmentID, SUM(Salary) AS TotalSalary FROM Employees GROUP BY DepartmentID HAVING SUM(Salary) > 120000;

-- JOINS

-- Inner Join
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Left Join
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Right Join
SELECT Departments.DepartmentID, Departments.DepartmentName, Employees.FirstName
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- Cross Join
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
CROSS JOIN Departments;

-- Like and Wildcards
SELECT * FROM Employees WHERE Email LIKE '%example%';
SELECT * FROM Employees WHERE FirstName LIKE 'A%';

-- Between
SELECT EmployeeID, FirstName, LastName, SalaryFROM Employees WHERE Salary BETWEEN 50000 AND 60000;

-- Union
SELECT EmployeeID, FirstName, LastName, Salary, HireDate
FROM Employees
WHERE Salary > 60000
UNION
SELECT EmployeeID, FirstName, LastName, Salary, HireDate
FROM Employees
WHERE HireDate < '2021-01-01';


-- Stored Procedure
DELIMITER $$

CREATE PROCEDURE GetEmployeesByDepartment(IN DeptID INT)
BEGIN
    SELECT EmployeeID, FirstName, LastName, Salary, HireDate
    FROM Employees
    WHERE DepartmentID = DeptID;
END$$

DELIMITER ;






