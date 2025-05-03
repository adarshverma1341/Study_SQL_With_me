--Today We Learn about How to Handle Null Values in SQl
--Let's Create a Table Which Has include null Vales
Use Group_Study

CREATE TABLE Customers (
    CustomerID INT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Ravi Kumar', 'ravi@email.com', '9876543210', 'Delhi'),
(2, 'Anjali Sharma', NULL, '9898989898', 'Mumbai'),
(3, 'Sohail Khan', 'sohail@email.com', NULL, 'Kolkata'),
(4, 'Priya Mehta', NULL, NULL, 'Delhi'),
(5, 'Arjun Roy', 'arjun@email.com', '9123456780', NULL);

Select * From Customers

--"NULL ka matlab hota hai — koi value available nahi hai. Ye zero nahi hota,
--blank string nahi hoti — ye ek unknown ya missing data ko represent karta hai."

--Q.1  NULL ko kaise check karein?
--Email Null Hai Ya Nhi?
Select * From Customers
where Email is null

---Q.2 Jinke paas phone number hai
Select * From Customers
Where Phone is not null

--Q.3 NULL ko default value dena 
-- Null Email ko "Not Provided" se Replace Karna
Select ISNULL(Email,'Not Provided') as Email_Status
From Customers

--COALESCE ka use (first non-null value)
Select COALESCE(Email,'Not Provided',Phone,'No Number') as Status
From Customers