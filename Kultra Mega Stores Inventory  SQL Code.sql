SELECT *
FROM [dbo].[KMS Sql Case Study]


--1. Which product category had the highest sales

SELECT Product_Category, SUM(sales) as highest_Sales
FROM [dbo].[KMS Sql Case Study]
WHERE Product_Category = 'Technology'
GROUP BY  Product_Category
ORDER BY highest_Sales DESC




--2. What are the Top 3 

SELECT TOP 3 Region, SUM(Sales) AS Top3_Region
FROM [dbo].[KMS Sql Case Study]
GROUP BY Region
ORDER BY Top3_Region DESC

--Bottom 3 regions in terms of sales

SELECT TOP 3 Region, SUM( Sales) AS Top3_Region
FROM [dbo].[KMS Sql Case Study]
GROUP BY Region
ORDER BY Top3_Region ASC

--3. What were the total sales of appliances in Ontario

SELECT Region, SUM(Sales) AS TotalSales_in_Ontario
FROM [dbo].[KMS Sql Case Study]
WHERE Region = 'Ontario' and Product_Sub_Category =  'Appliances'
GROUP BY Region 


--4. Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers 
##first let known them 

SELECT TOP 10 Customer_Name, SUM(Sales) AS Bottom10_Customers
FROM [dbo].[KMS Sql Case Study]
GROUP BY Customer_Name
ORDER BY Bottom10_Customers ASC


 --5. KMS incurred the most shipping cost using which shipping method

 SELECT TOP 1 Ship_Mode, SUM(Shipping_Cost) AS shipping_Cost
FROM [dbo].[KMS Sql Case Study]
GROUP BY Ship_Mode


--CASE SCENARIO II 

--6. Who are the most valuable customers, and what products or services do they typically purchase? 

SELECT TOP 10 Customer_Name,Product_Name, Sales AS Top10_Customers
FROM [dbo].[KMS Sql Case Study]
ORDER BY Top10_Customers DESC

--7. Which small business customer had the highest sales

SELECT TOP 1 Customer_Segment, Customer_Name,Sales AS  Higest_sales
FROM [dbo].[KMS Sql Case Study]
WHERE Customer_Segment = 'small business'
ORDER BY Higest_sales DESC


--8. Which Corporate Customer placed the most number of orders in 2009 – 2012

--------i had to alter the column type>>>>>>>>
ALTER TABLE [KMS Sql Case Study]
ALTER COLUMN [Order_Quantity] INT

SELECT TOP 1 Customer_Name,MAX(Order_Quantity) AS Most_placed_order
FROM [dbo].[KMS Sql Case Study]
WHERE Customer_Segment = 'Corporate'
GROUP BY Customer_Name
ORDER BY Most_placed_order DESC

--select(Order_Quantity)
--from [dbo].[KMS Sql Case Study]
--order by Order_Quantity desc

SELECT *
FROM [dbo].[KMS Sql Case Study]


--9. Which consumer customer was the most profitable one

SELECT TOP 1 Customer_Name, MAX(profit) AS Most_Profitable
FROM [dbo].[KMS Sql Case Study]
WHERE Customer_Segment = 'Consumer'
GROUP BY Customer_Name
ORDER BY Most_Profitable DESC


---10. Which customer returned items, and what segment do they belong to

SELECT Customer_Name, Customer_Segment
FROM [dbo].[KMS Sql Case Study]
WHERE Profit < 0 

---lets know Customer from each Customer Segment 

SELECT Customer_Segment, COUNT(Customer_Name) AS [No of Customers]
FROM [dbo].[KMS Sql Case Study]
WHERE Profit < 0 
GROUP BY Customer_Segment


SELECT *
FROM [dbo].[KMS Sql Case Study]
-- 11. If the delivery truck is the most economical but the slowest shipping method and Express Air is the fastest but the most expensive one, do you think the company appropriately spent shipping costs based on the Order Priority


SELECT Order_Priority,AVG(Shipping_Cost) AS [shipping cost from delivery truck]
FROM [dbo].[KMS Sql Case Study]
WHERE Ship_Mode = 'Delivery Truck'
GROUP BY Order_Priority
ORDER BY [shipping cost from delivery truck] DESC


SELECT Order_Priority,AVG(Shipping_Cost) AS [shipping cost from Express Air]
FROM [dbo].[KMS Sql Case Study]
WHERE Ship_Mode = 'Express Air'
GROUP BY Order_Priority
ORDER BY [shipping cost from Express Air] DESC

 
