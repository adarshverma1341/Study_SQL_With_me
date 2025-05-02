--- Today We learn About Group by clause
---also group by with Where and Having 
-- and how to use group by in Subquery also

--Lets Create a Table For the Better Explanation

Use Group_Study

CREATE TABLE sales_data (
    id INT PRIMARY KEY Identity(1,1),
    salesman VARCHAR(50),
    region VARCHAR(50),
    product VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    sale_date DATE
)

-- Now insert Data Into The Table
INSERT INTO sales_data (salesman, region, product, quantity, unit_price, sale_date) VALUES
('Ravi', 'East', 'Tea', 10, 100.00, '2024-01-15'),
('Ravi', 'East', 'Coffee', 5, 150.00, '2024-01-16'),
('Neha', 'West', 'Tea', 8, 95.00, '2024-01-15'),
('Amit', 'East', 'Juice', 15, 120.00, '2024-01-17'),
('Ravi', 'East', 'Tea', 7, 100.00, '2024-01-20'),
('Neha', 'West', 'Juice', 10, 130.00, '2024-01-22'),
('Amit', 'East', 'Coffee', 6, 140.00, '2024-01-23'),
('Karan', 'South', 'Tea', 12, 90.00, '2024-01-25');

Select * From sales_data

--Q.1 What Was The Total Sales Of Each Salesman?
Select salesman, SUM(unit_price*quantity) as Total_Sales
From sales_data
Group by salesman

--Q.2 How much sales were there in each region?
Select region, COUNT(*) as Total_Orders
From sales_data
Group by region

--Q.3 How much quantity of which product did each salesman sell?
Select salesman, product, SUM(quantity) as Total_qty
From Sales_data
Group by salesman,product

--Q.4 Show total sales of salesmen from the 'East' region only:
Select Salesman, SUM(unit_price*quantity) as Total_Sales
From sales_data
Where region='East'
group by salesman

--Q.5 Salesmen in each region whose sales are more than ₹2000:
Select salesman, region, SUM(unit_price*quantity) as Total_Sales
From sales_data
Group by salesman,region
Having SUM(unit_price*quantity) > 2000

-- Q.6 Show the Average price of Each Product;
Select Product, AVG(unit_price) as Avg_Price
From sales_data
Group by product

-- Q.7 Show salesmen whose total sales are more than ₹2000: Using SubQuery
Select * From (
--inner Query
Select Salesman,SUM(unit_price*quantity) as Total_Sales
From sales_data
Group by Salesman
)
-- Other Query
as Summary 
Where Total_Sales>2000

-- Q.8 Show total sales for each month:
Select MONTH(sale_date) As Sale_Month,SUM(unit_price*quantity) as Monthly_Sales
From sales_data
Group by MONTH(sale_date)


Select * From sales_data