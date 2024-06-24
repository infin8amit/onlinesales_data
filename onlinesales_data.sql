show databases;

USE your_database;

/* 1. Total Revenue by Region*/
SELECT Region, SUM(Total_Revenue) AS Total_Revenue
FROM your_database.sales_data
GROUP BY Region;

/*2. Average Unit Price by Product Category */
SELECT Product_Category, AVG(Unit_Price) AS Average_Unit_Price
FROM your_database.sales_data
GROUP BY Product_Category;

/* 3. Top 5 Products by Units Sold */
SELECT Product_Name, SUM(Units_Sold) AS Total_Units_Sold
FROM your_database.sales_data
GROUP BY Product_Name
ORDER BY Total_Units_Sold DESC
LIMIT 5;

/* 4. Total Revenue by Payment Method */
SELECT Payment_Method, SUM(Total_Revenue) AS Total_Revenue
FROM your_database.sales_data
GROUP BY Payment_Method;

/* 5. Monthly Revenue */
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(Total_Revenue) AS Total_Revenue
FROM your_database.sales_data
GROUP BY Month
ORDER BY Month;

/* 6. Total Units Sold by Region and Product Category */
SELECT Region, Product_Category, SUM(Units_Sold) AS Total_Units_Sold
FROM your_database.sales_data
GROUP BY Region, Product_Category;

/* 7. Total Revenue by Product Category */
SELECT Product_Category, SUM(Total_Revenue) AS Total_Revenue
FROM your_database.sales_data
GROUP BY Product_Category;

/* 8. Number of Transactions by Payment Method */
SELECT Payment_Method, COUNT(Transaction_ID) AS Transaction_Count
FROM your_database.sales_data
GROUP BY Payment_Method;

/* 9. Top 3 Regions by Total Revenue */
SELECT Region, SUM(Total_Revenue) AS Total_Revenue
FROM your_database.sales_data
GROUP BY Region
ORDER BY Total_Revenue DESC
LIMIT 3;

/* 10. Average Units Sold per Transaction by Product Category*/
SELECT Product_Category, AVG(Units_Sold) AS Average_Units_Sold
FROM your_database.sales_data
GROUP BY Product_Category;



