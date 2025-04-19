-- Today we learn about all the operartors of SQL
-- Airthmetic operator(+ - / * %)

Create Database Group_Study
use  group_Study

Create Table Employees
(
ID int,
Name Varchar(50),
Age INT,
Department Varchar(50),
Salary Decimal(10,2),
Bonus Decimal(10,2),
City Varchar(50),
Status Varchar(20)
)

Select * From Employees

---Now We See How To Insert Data Into the Table
Insert Into Employees Values (1,'Alice',28,'IT',60000,5000,'Delhi','Active')
Insert Into Employees Values (2, 'Bob', 35, 'HR', 55000, 4000, 'Mumbai', 'Resigned'),
(3, 'Charlie', 40, 'Finance', 70000, 6000, 'Bangalore', 'Active'),
(4, 'David', 25, 'IT', 50000, NULL, 'Delhi', 'Active'),
(5, 'Eva', 30, 'Marketing', 45000, 3000, 'Chennai', NULL)

-- Airthmetic (+)
Select Name,Salary + Bonus As Total_Salary from Employees
Select * From Employees

--Airthmetic(-)
Select Name, Salary - 1000 As Revised_Salary From Employees

--Airthmetic (*)
Select Name,Salary * 12 As Annual_Salary from Employees

--Airthmetic (/)
Select Name,Salary/2 As Half_Salary from Employees

--Airthmetic(%)
Select Name,Age % 2 As Age_Mod_2 From Employees

--Comparision Operator
Select * From Employees where Salary > 50000

Select * From Employees where Department='IT'

Select * From Employees Where Bonus is null

Select * From Employees Where Age between 25 and 35

Select * From Employees Where Department in ('HR','Finance')

Select * From Employees Where Name like'_A%'

--Logical Operator--(AND, OR, NOT)
Select * From Employees Where Department='IT' and City='Delhi'

Select * From Employees Where Department='HR' OR City='Chennai'

Select * From Employees Where not Department='Finance'

-- SET Operators (UNION, UNION ALL, EXCEPT)
-- Let's Create Another Table

 Create Table Ex_Employees
 (
 Id int,
 Name Varchar(50)
 )
insert into Ex_Employees Values (2,'Bob'),(6,'Frank')

 Select * From Ex_Employees

 -- UNION
 Select Name From Employees
 UNION
 Select Name From Ex_Employees

 -- UNION ALL
 Select Name From Employees
 UNION ALL
 Select Name From Ex_Employees

 -- Except
 Select Name From Employees
 Except
 Select Name From Ex_Employees











