--Today We learn About Text Functions in SQL
--Common Text Functions in SQL
--1] UPPER  2] LOWER  3]TRIM  4]REPLACE  5]LEFT   6]RIGHT 
-- 7]CONCAT 8]LEN


--Now create a table
CREATE TABLE Employees1 (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Email VARCHAR(100)
);
Select * From Employees1

--Now Insert Data into the table
INSERT INTO Employees1 (ID, Name, Department, Email) VALUES
(1, 'John Smith', 'HR', 'john.smith@example.com'),
(2, 'alice JOHNSON', 'Finance', 'alice.j@example.com'),
(3, 'ROBERT white', 'IT', 'rob.white@example.com'),
(4, 'Mary O''Neil', 'HR', 'mary.oneil@example.com');

Select * From Employees1

--UPPER
Select Name,UPPER(Name) as Upper_Name From Employees1

--LOWER
Select Name,LOWER(Name) as Lower_Name From Employees1

--CONCAT
Select Name,Email, CONCAT(Name,' - ',Email) as Contact_Info  FROM Employees1

--Trim
Select Name,TRIM(Name) as TRIM_Name From Employees1

--REPLACE--
Select Name,REPLACE(LOWER(Name),'john','JOHN') as Replaced_Name From Employees1

Select * From Employees1

--LEN
Select Email,LEN(Email) as Email_Length from Employees1

--LEFT
Select Name,LEFT(Name,4) as First4chars from Employees1

--Right
Select Email,RIGHT(Email,15) as DomainHint from Employees1