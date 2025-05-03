--Today We Learn About All The Joins in SQL
/* 1] Inner Join
  Sirf Matching Row Ko Dikhata Hai .

  Let's Create two Tables For Real Table Example 
  How To work inner Joins in SQL Query */

  Create Table Employees_1 (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    DepartmentID INT
)

-- Now Insert Data into The Table
INSERT INTO Employees_1 (EmployeeID, Name, DepartmentID) VALUES
(1, 'Ramesh', 101),
(2, 'Suresh', 102),
(3, 'Ganesh', 103),
(4, 'Naresh', NULL);

Select * From Employees_1

--Let's Create A another Table Which is Related to
--My First Table

Create Table Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
)

--Now Insert Data into The Table
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(101, 'HR'),
(102, 'IT'),
(104, 'Finance');


Select * From Employees_1
Select * From Departments


-- Now We see INNER JOIN Example
--  Sirf Matching Row Ko Dikhata Hai
Select e.Name,d.departmentName
From Employees_1 e
INNER JOIN Departments d ON e.DepartmentID=d.DepartmentID

/* 2] LEFT JOIN
left table ki sabhi rows + Matching Right
*/
-- Sabhi left rows se dikhata hai match ho ya n ho 
Select e.Name,d.departmentName
From Employees_1 e
LEFT JOIN Departments d ON e.DepartmentID=d.DepartmentID

/* 3] RIGHT JOIN
Right Table ki Sabhi Rows + Matching Left */

Select e.Name,d.departmentName
From Employees_1 e
RIGHT JOIN Departments d ON e.DepartmentID=d.DepartmentID

/* 4] FULL OUTER JOIN
Dono Table ke Sabhi Rows Dikhayega chaye wo match ho ya n ho */
Select e.Name,d.DepartmentName
From Employees_1 e
FULL OUTER JOIN Departments d ON e.DepartmentID=d.DepartmentID

/* CROSS JOIN
Ek Row ko Dusari Table Ki Har Row Se Jodata Hai  */
-- ye sabhi Departments aur employes tables ke row ko dikahyega
Select e.Name , d.departmentName
From Employees_1 e
CROSS JOIN Departments d