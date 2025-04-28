/* Aggregate Functions In SQL
1. SUM  2.MIN  3.MAX  4.AVG   5.COUNT   */

-- Let's Create A Table 
Create Table Employees1
(
EmployeeID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(50),
Salary INT
)

Select * From Employees1

-- Now Insert DATA into the Table

INSERT INTO Employees1 (EmployeeID, Name, Department, Salary) VALUES
(1, 'Ravi', 'HR', 40000),
(2, 'Pooja', 'IT', 60000),
(3, 'Aakash', 'IT', 55000),
(4, 'Suman', 'HR', 45000),
(5, 'Neha', 'Finance', 50000);

Select * From Employees1

--Q.1 Kitne Total Employees hai ?
Select COUNT(*) as Total_Emp From Employees1

--Q.2 Sabhi Employees ki total Salary Kitni Hai ?
Select SUM(Salary) as Tota_salary From Employees1

--Q.3 Sabhi Emp Ki AVG Salary Kya hai ?
Select AVG(Salary) as Avg_Salary From Employees1

--Q.4 Sabse Kam Salary Kitani Hai?
Select MIN(Salary) as Min_Salary From Employees1

--Q.5 Sabse Jyada Salary Kitani Hai?
Select MAX(Salary) as Max_Salary From Employees1

--Q.6 Department Wise Total salary Kitani Hai?
Select Department, SUM(Salary) as Department_wise_salary From Employees1
group by Department

--Q.7 Department Wise Average Salary kya hai ?
Select Department, AVG(Salary) as Average_Salary From Employees1
Group by Department

-- Q.8 Depaqrtment wise Employees ki sankhya kitani hai ?
Select Department, Count(*) as No_of_Emp From Employees1
Group by Department

--Q.9 Woh Department Jinka Total Salary 1Lac se jyada hai?
Select Department, SUM(Salary) 
as Total_Salary From Employees1
Group by Department
Having  SUM(Salary)>100000

--Q.10 Har Department ka Maximum Salary Ka Emp Nikalna?
Select Department, MAX(Salary) as Max_Salary From Employees1
Group by Department

---- Agar Ek sath Kayi sari Aggregate Function use karna hai

Select Department,
                 SUM(Salary) as Total_Salary,
				 MAX(Salary) as Max_Salary,
				 MIN(Salary) as Min_Salary,
				  COUNT(*) as No_of_Emp
From Employees1
Group by Department