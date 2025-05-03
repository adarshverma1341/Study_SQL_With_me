--Order by Clause in SQL
use group_study
--Let's Create A Table
CREATE TABLE SalesData (
    SaleID INT,
    ProductCategory VARCHAR(50),
    ProductName VARCHAR(50),
    Region VARCHAR(50),
    SalesAmount DECIMAL(10,2),
    Discount DECIMAL(5,2),
    SaleDate DATE,
    QuantitySold INT
)

Select * From SalesData

--now insert data into the table
INSERT INTO SalesData VALUES
(1, 'Electronics', 'Laptop', 'North', 1200.50, 0.10, '2024-01-05', 3),
(2, 'Electronics', 'Tablet', 'South', 800.00, 0.15, '2024-01-06', 5),
(3, 'Electronics', 'Laptop', 'East', 950.75, 0.05, '2024-01-08', 2),
(4, 'Mobile', 'Phone', 'West', 650.30, NULL, '2024-01-10', 10),
(5, 'Electronics', 'Tablet', 'North', 780.00, 0.10, '2024-01-11', 4),
(6, 'Electronics', 'Laptop', 'South', 1300.00, 0.20, '2024-01-13', 1),
(7, 'Mobile', 'Phone', 'East', 700.00, 0.00, '2024-01-15', 7),
(8, 'Accessories', 'Headphones', 'North', 150.00, 0.05, '2024-01-16', 15)


-- Q.1 Sort by Latest Sale
Select * From SalesData
Order by SaleDate Asc

-- Q.2 Sort by Product and then Discount 
Select * From SalesData
order by ProductName,Discount desc

---Full MS SQL Query Using All Clauses
Select
      Region,
	  productName,
	  SUM(QuantitySold) as TotalunitSold,
	  SUM(SalesAmount*QuantitySold) as Total_revenue,
	  AVG(SalesAmount) as Avg_Price
	  From SalesData
	  Where ProductCategory='Electronics'
	  Group by Region,ProductName
	  Having Sum(QuantitySold) >=5
	  Order by Total_revenue desc

