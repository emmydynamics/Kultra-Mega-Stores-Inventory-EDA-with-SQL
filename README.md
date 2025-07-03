# Kultra Mega Stores Inventory
# CODE IN FIRST FILE ABOVE

###  Project Overview

Kultra Mega Stores (KMS), headquartered in Lagos, specialises in office supplies and 
furniture. Its customer base includes individual consumers, small businesses (retail), and 
large corporate clients (wholesale) across Lagos, Nigeria. 
i have been engaged as a Business Intelligence Analyst to support the Abuja division of 
KMS. The Business Manager has shared an Excel file containing order data from 2009 to 
2012 and has requested that you analyze the data and present your key insights and 
findings. 

#### **Case Scenario I** 
1. Which product category had the highest sales? 
2. What are the Top 3 and Bottom 3 regions in terms of sales? 
3. What were the total sales of appliances in Ontario? 
4. Advise the management of KMS on what to do to increase the revenue from the bottom 
10 customers 
5. KMS incurred the most shipping cost using which shipping method? 

#### **Case Scenario II**
6. Who are the most valuable customers, and what products or services do they typically 
purchase? 
7. Which small business customer had the highest sales? 
8. Which Corporate Customer placed the most number of orders in 2009 – 2012? 
9. Which consumer customer was the most profitable one? 
10. Which customer returned items, and what segment do they belong to? 
11. If the delivery truck is the most economical but the slowest shipping method and 
Express Air is the fastest but the most expensive one, do you think the company 
appropriately spent shipping costs based on the Order Priority? Explain your answer 


### Data Description 

- Data columns and their meaning:

   - Row ID: which contain the number of ID in each row
   - Order ID: Which contains the order id for each customer
   - Order Date: Which means the date that the product were ordered
   - Order Prirority: this column contains the urgency of the ordered product
   - Order Quantity: This is amount of product the customer ordered
   - Sales: These include the amount the company sold their products
   - Discount: is the reduced amount for every customer on each product
   - Ship Mode: The mode of product Transportation
   - Profit: the amount gained or lost by the company
   - Unit Price: The price of every single product
   - Shipping Cost: the amount spent on product transportation
   - Customer Name: the customer name
   - Province: the location of the customer
   - Region: location by regions
   - Customer Segment: what class of customer are they
   - Product Category: what product category do they fall in
   - product sub-category: whatb product type Consumer order
   - Product name
   - product container
   - product base margin
   - ship date

- Column Numbers
  8400 Rows and 21 columns

### Data Cleaning Process

- I changed some datatype to eable the dataset load and to improve calculation accuracy

### Analysis Approach
 - to run my analysis i made use of **Micro Soft SQL Server **

### Result Interpretations 

1. Which product category had the highest sales: Technology with 5984248.18199999
2. What are the Top 3 and Bottom 3 regions in terms of sales:** West**	3597549.2755,**Ontario**	3063212.4795, **Prarie**	2837304.6015
   for the lowest** Nunavut**	116376.4835, **Northwest Territories**	800847.3295, **Yukon**	975867.370999999
3.  What were the total sales of appliances in Ontario: 3063212.4795
4.  Advise the management of KMS on what to do to increase the revenue from the bottom 10 customer: The company should make more discount for them and also celibrate the customer on their birthdays.

    ![bottom](https://github.com/user-attachments/assets/e0e2ad27-502a-4dec-a083-9c4b8b432526)

5. KMS incurred the most shipping cost using which shipping method: **Delivery Truck**
6. Who are the most valuable customers, and what products or services do they typically 
purchase:

 ![most](https://github.com/user-attachments/assets/53358472-8c12-494d-88c9-9ab55aa223c0)

7. Which small business customer had the highest sales:

 
 ![small](https://github.com/user-attachments/assets/0ba7f524-f7bf-40f0-b317-78780dbac76c)


8. Which Corporate Customer placed the most number of orders in 2009 – 2012: Adam Shillingsburg with 50 order placement
9. Which consumer customer was the most profitable one: Emily Phan with profit of 27220.69
10. Which customer returned items, and what segment do they belong to [customer that retuned product.xlsx](https://github.com/user-attachments/files/21039544/customer.that.retuned.product.xlsx)

11. If the delivery truck is the most economical but the slowest shipping method and 
Express Air is the fastest but the most expensive one, do you think the company 
appropriately spent shipping costs based on the Order Priority? Explain your answer


**Insight**: in some cases, the company did align shipping decisions with Order Priority, especially by using Express Air for High. But overall, the use of Express Air for Low and Medium priority suggests inconsistent cost control. There's likely room for optimization—reserving fast shipping only for top-priority orders





# link to the Second project below 
https://github.com/emmydynamics/Kultra-Mega-Stores-Inventory-EDA-with-SQL

     









