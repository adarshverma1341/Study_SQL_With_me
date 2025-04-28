-- Numeric Functions in SQL
--Let's Create A Table For better Explanation

Create Table EmployeeDetails
(
EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2),
    Bonus INT,
    Commission INT
)

--- Now insert data into the Table
INSERT INTO EmployeeDetails (EmpID, Name, Salary, Bonus, Commission) VALUES
(1, 'Ravi', 45320.75, 4500, 1000),
(2, 'Pooja', 60010.50, 6000, 1500),
(3, 'Aakash', 55999.99, 5500, 1200),
(4, 'Suman', 44111.20, 4000, 900),
(5, 'Neha', 50000.00, 5000, 1100);

Select * From EmployeeDetails

--Q.1 Absolute value of difference between salary and 50000(ABS)
Select Name,Salary,Bonus,Commission,
             ABS(Salary - 50000) as Abs_Salary_Dif From EmployeeDetails  

/* Explanation:
ABS() function kisi bhi number ka absolute (positive) value return karta hai.
Matlab agar number negative ho, to usse positive banata hai.*/

-- Q.2 Round Salary upto nearest integer (CEILING)
Select Name,Salary,Bonus,Commission,
              CEILING(Salary) as Ceiling_Salary From EmployeeDetails

/*EXPLANATION:
CEILING() function kisi bhi number ko next upper integer tak round kar deta hai.
Matlab agar number 4.3 hai to 5 tak round ho jayega.  */

-- Q.3 Round Salary down to nearest integer (FLOOR)
Select Name,Salary,Bonus,Commission,
              FLOOR(Salary) as Floor_Salary From EmployeeDetails

/*EXPLANATION:
FLOOR() function kisi bhi number ko next down integer tak round kar deta hai.
Matlab agar number 4.8 hai to 4 tak round ho jayega.  */

--Q.4 Round salary 2 Decimal places (ROUND)
Select Name,Salary,Bonus,Commission,
            ROUND(Salary,2) as Round_Salary From EmployeeDetails

/*Explanation:
ROUND() function number ko specified decimal places tak round kar deta hai. */

--Q.5 Square of bonus (POWER)
Select Name,Salary,Bonus,Commission,
                  POWER(Bonus,2) as Bonus_Square From EmployeeDetails

/* Explanation:
POWER() function kisi number ko kisi power me convert karta hai (exponentiation).*/

--Q.6 Square root of bonus (SQRT)
Select Name,Salary,Bonus,Commission,
                  SQRT(Bonus) as Bonus_Square_Root From EmployeeDetails

/* Explanation:
SQRT() function kisi number ka square root nikalta hai.  */

--Q.7 Square of bonus (SQUARE)
Select Name,Salary,Bonus,Commission,
                  SQUARE(Bonus) as Bonus_Square_2 From EmployeeDetails

/* Explanation:
SQUARE() function kisi number ko square karta hai */

-- kuch aur bhi numeric function hai jiska itna use nhi hota maine unke 
-- bare me but neeche describe kar deta hu 

/* EXP(): Exponential function (e^x)
 LOG(): Natural logarithm (base e)
 LOG10(): Base 10 logarithm
 SIGN(): Number ka sign (+1, -1, or 0)
 PI(): Pi value (3.14159)
 RAND(): Random number generation (between 0 and 1)  */











