--Today We Learn Date & Time Function in SQL
--Now Let's Create A Table

use Group_Study
Create Table Orders
(
Order_ID INT,
Customer_Name VARCHAR(100),
Orders_Date DATETIME
)

Select* From Orders

-- Insert Data Into the Table
INSERT INTO Orders (Order_ID, Customer_Name, Orders_Date) VALUES
(1, 'Rahul', '2025-04-20 10:30:00'),
(2, 'Priya', '2025-04-22 15:45:00'),
(3, 'Aman',  '2025-04-25 09:00:00'),
(4, 'Sneha', '2025-04-26 12:15:00');

Select* From Orders

--GETDATE()- Show Current Date & Time
--Q.1 Current Date & Time Dikhao
Select GETDATE()

--SYSDATETIME()- Show High Precision Date & Time
--Q.2 Current Date aur time high precision ke sath dikhao
Select SYSDATETIME()


--CURRENT_TIMESTAMP- Shortcut For GETDATE
--Q.3 Currenttimstamp batao
Select CURRENT_TIMESTAMP as Currenttimestamp

--CAST(GETDATE() AS DATE)--Date Only
--Q.4 Current SYS ki only Date Nikalo
Select CAST(GETDATE() AS DATE) AS TodayDateOnly

--DATEADD - Add Days
--Q.4 Table me sabhi orderdate me 11 din add karke new delivery date calculate karo
Select
      Order_ID,
	  Customer_Name,
	  Orders_Date,
	  DATEADD(DAY,11,Orders_Date) as NewDeliveryDate From Orders

-- DATEDIFF- Difference Between Dates
--Q.5 Table me Ordersdate me aaj ke date se kitna fark hai,nikalna hai?

Select
      Order_ID,
	  Customer_Name,
	  Orders_Date,
	  DATEDIFF(DAY,Orders_Date,GETDATE()) as SinceOrderDate From Orders

-- FORMAT()- Custome Date Formate
--Q.6 Har Order ka order date dd-mm-yyyy formate me dikhana hai
Select
      Order_ID,
	  Customer_Name,
	  Orders_Date,
	  FORMAT(Orders_date,'dd-mm-yyyy') as Orderdateformate From Orders

-- EOMONTH()- End of Month Date
--Q.7 Har Order Ka Month end ka date dikhana hai 
Select 
     Order_ID,
	 Customer_Name,
	 Orders_Date,
	 EOMONTH(Orders_Date) as EndDate From Orders