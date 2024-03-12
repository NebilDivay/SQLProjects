CREATE DATABASE Customers_Orders_Products 

Use Customers_Orders_Products
Go
;

--TASK 1 :-

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(50),
  Email VARCHAR(100)
);

INSERT INTO Customers (CustomerID, Name, Email)
VALUES
  (1, 'John Doe', 'johndoe@example.com'),
  (2, 'Jane Smith', 'janesmith@example.com'),
  (3, 'Robert Johnson', 'robertjohnson@example.com'),
  (4, 'Emily Brown', 'emilybrown@example.com'),
  (5, 'Michael Davis', 'michaeldavis@example.com'),
  (6, 'Sarah Wilson', 'sarahwilson@example.com'),
  (7, 'David Thompson', 'davidthompson@example.com'),
  (8, 'Jessica Lee', 'jessicalee@example.com'),
  (9, 'William Turner', 'williamturner@example.com'),
  (10, 'Olivia Martinez', 'oliviamartinez@example.com'),
  (11, 'Alex Brown', 'alexbrown@example.com'),
  (12, 'Sophie Turner', 'sophieturner@example.com'),
  (13, 'Charlie Miller', 'charliemiller@example.com'),
  (14, 'Ava Wilson', 'avawilson@example.com'),
  (15, 'Daniel Harris', 'danielharris@example.com'),
  (16, 'Emma Davis', 'emmadavis@example.com'),
  (17, 'James White', 'jameswhite@example.com'),
  (18, 'Lily Martin', 'lilymartin@example.com'),
  (19, 'Benjamin Johnson', 'benjaminjohnson@example.com'),
  (20, 'Zoe Anderson', 'zoeanderson@example.com'),
  (21, 'Jackson Moore', 'jacksonmoore@example.com'),
  (22, 'Victoria Lewis', 'victorialewis@example.com'),
  (23, 'Ethan Garcia', 'ethangarcia@example.com'),
  (24, 'Grace Taylor', 'gracetaylor@example.com'),
  (25, 'Christopher Hall', 'christopherhall@example.com');


CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  ProductName VARCHAR(50),
  OrderDate DATE,
  Quantity INT
);

INSERT INTO Orders (OrderID, CustomerID, ProductName, OrderDate, Quantity)
VALUES
  (1, 1, 'Product A', '2023-07-01', 5),
  (2, 2, 'Product B', '2023-07-02', 3),
  (3, 3, 'Product C', '2023-07-03', 2),
  (4, 4, 'Product A', '2023-07-04', 1),
  (5, 5, 'Product B', '2023-07-05', 4),
  (6, 6, 'Product C', '2023-07-06', 2),
  (7, 7, 'Product A', '2023-07-07', 3),
  (8, 8, 'Product B', '2023-07-08', 2),
  (9, 9, 'Product C', '2023-07-09', 5),
  (10, 10, 'Product A', '2023-07-10', 1),
  (11, 11, 'Product D', '2023-07-11', 2),
  (12, 12, 'Product E', '2023-07-12', 3),
  (13, 13, 'Product F', '2023-07-13', 4),
  (14, 14, 'Product G', '2023-07-14', 1),
  (15, 15, 'Product H', '2023-07-15', 5),
  (16, 16, 'Product I', '2023-07-16', 2),
  (17, 17, 'Product J', '2023-07-17', 3),
  (18, 18, 'Product A', '2023-07-18', 4),
  (19, 19, 'Product B', '2023-07-19', 2),
  (20, 20, 'Product C', '2023-07-20', 1),
  (21, 21, 'Product D', '2023-07-21', 3),
  (22, 22, 'Product E', '2023-07-22', 5),
  (23, 23, 'Product F', '2023-07-23', 2),
  (24, 24, 'Product G', '2023-07-24', 1),
  (25, 25, 'Product H', '2023-07-25', 4);





CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(50),
  Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price)
VALUES
  (1, 'Product A', 10.99),
  (2, 'Product B', 8.99),
  (3, 'Product C', 5.99),
  (4, 'Product D', 12.99),
  (5, 'Product E', 7.99),
  (6, 'Product F', 6.99),
  (7, 'Product G', 9.99),
  (8, 'Product H', 11.99),
  (9, 'Product I', 14.99),
  (10, 'Product J', 4.99),
  (11, 'Product K', 15.99),
  (12, 'Product L', 9.99),
  (13, 'Product M', 6.49),
  (14, 'Product N', 11.49),
  (15, 'Product O', 8.99),
  (16, 'Product P', 7.49),
  (17, 'Product Q', 10.99),
  (18, 'Product R', 13.99),
  (19, 'Product S', 16.49),
  (20, 'Product T', 5.49),
  (21, 'Product U', 14.99),
  (22, 'Product V', 8.49),
  (23, 'Product W', 9.99),
  (24, 'Product X', 12.49),
  (25, 'Product Y', 4.99);

  --1.	Write a query to retrieve all records from the Customers table.

SELECT * FROM CUSTOMERS

--2.	Write a query to retrieve the names and email addresses of customers whose names start with 'J'.

SELECT CUSTOMERS.NAME, CUSTOMERS.EMAIL 

FROM CUSTOMERS 

WHERE NAME LIKE 'J%'

--3.	Write a query to retrieve the order details (OrderID, ProductName, Quantity) for all orders.

SELECT  ORDERS.OrderID, ORDERS.PRODUCTNAME, ORDERS.QUANTITY

FROM ORDERS




--4.	Write a query to calculate the total quantity of products ordered.

SELECT SUM(ORDERS.QUANTITY) 

AS TOTAL_QUANTITY 

FROM ORDERS

--5.	Write a query to retrieve the names of customers who have placed an order.
SELECT Customers.Name 
FROM Customers 

WHERE CUSTOMERID IN ( 
SELECT CUSTOMERID
FROM ORDERS 
);



--6.	Write a query to retrieve the products with a price greater than $10.00.

SELECT * FROM PRODUCTS

WHERE 
Price > $10.00

--7.	Write a query to retrieve the customer name and order date for all orders placed on or after '2023-07-05'.
SELECT Customers.Name , Orders.OrderDate 
FROM Customers 
INNER JOIN
Orders 
ON Customers.CustomerID = Orders.OrderID 

WHERE Orders.OrderDate >= ' 2023-07-05'


--8.	Write a query to calculate the average price of all products.

SELECT AVG (PRODUCTS.PRICE) 

AS AVERAGE_PRICE

FROM PRODUCTS

--9.	Write a query to retrieve the customer names along with the total quantity of products they have ordered.
SELECT Customers .Name ,Orders .Quantity 

FROM 

Customers 
INNER JOIN
Orders 

ON Customers .CustomerID = Orders .OrderID 

--10.	Write a query to retrieve the products that have not been ordered.

SELECT * FROM Products 

WHERE ProductName NOT IN (

SELECT ProductName FROM Orders 
)







--Task 2 :-

--1.	Write a query to retrieve the top 5 customers who have placed the highest total quantity of orders.
SELECT TOP 5 CUSTOMERS.*,
ORDERS.QUANTITY 

FROM 
CUSTOMERS
INNER JOIN 
ORDERS
ON CUSTOMERS.CUSTOMERID = ORDERS.ORDERID
ORDER BY ORDERS.QUANTITY DESC
;


--2.	Write a query to calculate the average price of products for each product category.

SELECT 
Products.ProductName, 
AVG(PRICE) AS Average_Price 
FROM 
PRODUCTS
GROUP BY Products.ProductName
;

--3.	Write a query to retrieve the customers who have not placed any orders.

SELECT Customers.Name 
FROM Customers 

WHERE CUSTOMERID NOT IN ( 
SELECT CUSTOMERID
FROM ORDERS 
);

--4.	Write a query to retrieve the order details (OrderID, ProductName, Quantity) for orders placed by customers whose names start with 'M'.
SELECT 
ORDERS.ORDERID,
ORDERS.PRODUCTNAME,
ORDERS.QUANTITY 

FROM ORDERS 
WHERE CUSTOMERID IN (

SELECT 
CUSTOMERID FROM CUSTOMERS 
WHERE NAME LIKE 'M%'
); 
--5.	Write a query to calculate the total revenue generated from all orders.
SELECT SUM(O.QUANTITY * P.PRICE) AS Total_Revenue
FROM Orders O
INNER JOIN Products P ON O.ProductName = P.ProductName;

--6.	Write a query to retrieve the customer names along with the total revenue generated from their orders.
SELECT Customers.Name,SUM(ORDERS.QUANTITY*PRODUCTS.PRICE) AS TOTAL_REVENUE 
FROM Customers
INNER JOIN
Orders ON Customers .CustomerID =Orders .CustomerID 
INNER JOIN 
Products ON Orders .ProductName =Products .ProductName
GROUP BY Customers.Name 

--7.	Write a query to retrieve the customers who have placed at least one order for each product category.
SELECT CUSTOMERS.CustomerID  FROM 
CUSTOMERS 
INNER JOIN 
ORDERS ON Customers .CustomerID = Orders .CustomerID 
GROUP BY CUSTOMERS.CustomerID
HAVING COUNT(Orders.ProductName ) >= 1

--8.	Write a query to retrieve the customers who have placed orders on consecutive days.
SELECT DISTINCT c.customerid, c.name
FROM customers c
JOIN orders o1 ON c.customerid = o1.customerid
JOIN orders o2 ON c.customerid = o2.customerid
WHERE o1.orderdate = DATEADD(DAY, -1, o2.orderdate);
--9.	Write a query to retrieve the top 3 products with the highest average quantity ordered.
SELECT TOP (3 )p.productname, AVG(o.quantity) AS average_quantity
FROM products p
INNER JOIN orders o ON p.productNAME = o.productNAME 
GROUP BY p.productname
ORDER BY average_quantity DESC


--10.	Write a query to calculate the percentage of orders that have a quantity greater than the average quantity.


WITH AvgQuantity AS (
    SELECT AVG(Quantity) AS avg_quantity
    FROM Orders
),
OrdersAboveAvg AS (
    SELECT COUNT(*) AS num_orders_above_avg
    FROM Orders
    CROSS JOIN AvgQuantity
    WHERE Quantity > avg_quantity
)
SELECT 
    (num_orders_above_avg * 100.0 / (SELECT COUNT(*) FROM Orders)) AS percentage_orders_above_avg
FROM 
    OrdersAboveAvg;







--Task 3:-
--1.	Write a query to retrieve the customers who have placed orders for all products.
SELECT 
    c.CustomerID,
    c.Name
FROM 
    Customers c
WHERE 
    NOT EXISTS (
        SELECT 
            1
		FROM
            Products p
        WHERE 
            NOT EXISTS (
                SELECT 
                    1
                FROM 
                    Orders o
                WHERE 
                    o.CustomerID = c.CustomerID
                    AND o.Productname = p.productname
            )
    );

--2.	Write a query to retrieve the products that have been ordered by all customers.

SELECT 
      P.PRODUCTID,P.PRODUCTNAME 
FROM 
      PRODUCTS P
WHERE NOT EXISTS 
              ( SELECT 
			         1 
                FROM 
				     CUSTOMERS C 
WHERE NOT EXISTS
               (SELECT 
			         1
			    FROM 
				     ORDERS O 
				WHERE 
				     O.CUSTOMERID =C.CUSTOMERID AND 
					 P.PRODUCTNAME =O.PRODUCTNAME
			 )
	);



--3.	Write a query to calculate the total revenue generated from orders placed in each month.
SELECT 
    DATEPART(YEAR, orderdate) AS year,
    DATEPART(MONTH, orderdate) AS month,
    SUM(products.price * orders.quantity) AS total_revenue
FROM 
    orders inner join products on orders.productname=products.productname
GROUP BY 
    DATEPART(YEAR, orderdate), DATEPART(MONTH, orderdate);
--4.	Write a query to retrieve the products that have been ordered by more than 50% of the customers.
SELECT 
    P.PRODUCTID,
    COUNT(DISTINCT C.CUSTOMERID) AS TOTAL_CUSTOMERS,
    COUNT(DISTINCT ORDERID) AS TOTAL_ORDERS
FROM 
    ORDERS
	INNER JOIN
	PRODUCTS P ON ORDERS .PRODUCTNAME = P.PRODUCTNAME 
	INNER JOIN CUSTOMERS C ON C.CUSTOMERID =ORDERS .CUSTOMERID 
GROUP BY 
    PRODUCTID
HAVING 
    COUNT(DISTINCT C.CUSTOMERID) > (SELECT COUNT(DISTINCT CUSTOMERID) * 0.5 FROM ORDERS);
--5.	Write a query to retrieve the top 5 customers who have spent the highest amount of money on orders.

SELECT TOP 5
    C.CUSTOMERID,
    C.NAME,
    SUM(P.PRICE * O.QUANTITY) AS TOTAL_SPENT
FROM
    CUSTOMERS C
JOIN
    ORDERS O ON C.CUSTOMERID = O.CUSTOMERID
JOIN
    PRODUCTS P ON O.PRODUCTNAME = P.PRODUCTNAME
GROUP BY
    C.CUSTOMERID,
    C.NAME
ORDER BY
    TOTAL_SPENT DESC;
--6.	Write a query to calculate the running total of order quantities for each customer.
SELECT
    CUSTOMERID,
    ORDERDATE,
    QUANTITY,
    SUM(QUANTITY) OVER (PARTITION BY CUSTOMERID ORDER BY ORDERDATE) AS RUNNING_TOTAL
FROM
    ORDERS
--7.	WRITE A QUERY TO RETRIEVE THE TOP 3 MOST RECENT ORDERS FOR EACH CUSTOMER.

WITH RANKEDORDERS AS (
    SELECT
        CUSTOMERID,
        ORDERID,
        ORDERDATE,
        ROW_NUMBER() OVER (PARTITION BY CUSTOMERID ORDER BY ORDERDATE DESC) AS ROW_NUM
    FROM
        ORDERS
)
SELECT
    CUSTOMERID,
    ORDERID,
    ORDERDATE
FROM
    RANKEDORDERS
WHERE
    ROW_NUM <= 3;
--8.	Write a query to calculate the total revenue generated by each customer in the last 30 days.
SELECT
    O.CUSTOMERID,
    SUM(P.PRICE * O.QUANTITY) AS TOTAL_REVENUE_LAST_30_DAYS
FROM
    ORDERS O
	INNER JOIN PRODUCTS P ON O.PRODUCTNAME =P.PRODUCTNAME 
WHERE
    O.ORDERDATE >= DATEADD(DAY, -30, GETDATE())
GROUP BY
    O.CUSTOMERID;
--9.	Write a query to retrieve the customers who have placed orders for at least two different product categories.
SELECT
    CUSTOMERID
FROM
    ORDERS
GROUP BY
    CUSTOMERID
HAVING
    COUNT(DISTINCT PRODUCTNAME) >= 2;
--10.	WRITE A QUERY TO CALCULATE THE AVERAGE REVENUE PER ORDER FOR EACH CUSTOMER.
SELECT
    CUSTOMERID,
    AVG(P.PRICE * QUANTITY) AS AVERAGE_REVENUE_PER_ORDER
FROM
    ORDERS O
	INNER JOIN PRODUCTS P ON O.PRODUCTNAME =P.PRODUCTNAME 
GROUP BY
    CUSTOMERID;
--11.	Write a query to retrieve the customers who have placed orders for every month of a specific year.
SELECT
    CUSTOMERID
FROM
    (
        SELECT
            CUSTOMERID,
            DATEPART(YEAR, ORDERDATE) AS ORDER_YEAR,
            DATEPART(MONTH, ORDERDATE) AS ORDER_MONTH
        FROM
            ORDERS
        GROUP BY
            CUSTOMERID,
            DATEPART(YEAR, ORDERDATE),
            DATEPART(MONTH, ORDERDATE)
    ) AS ORDER_MONTHS
WHERE
    ORDER_YEAR = '2023'
GROUP BY
    CUSTOMERID
HAVING
    COUNT(DISTINCT ORDER_MONTH) = 12;
	
--12.	WRITE A QUERY TO RETRIEVE THE CUSTOMERS WHO HAVE PLACED ORDERS FOR A SPECIFIC PRODUCT IN CONSECUTIVE MONTHS.

WITH CONSECUTIVEMONTHS AS (
    SELECT 
        CUSTOMERID,
        DATEADD(MONTH, DATEDIFF(MONTH, 0, ORDERDATE), 0) AS MONTH_START,
        ROW_NUMBER() OVER (PARTITION BY CUSTOMERID ORDER BY ORDERDATE) AS ROW_NUM
    FROM 
        ORDERS
)
SELECT DISTINCT
    CM1.CUSTOMERID
FROM 
    CONSECUTIVEMONTHS CM1
JOIN 
    CONSECUTIVEMONTHS CM2 ON CM1.CUSTOMERID = CM2.CUSTOMERID
                          AND CM1.ROW_NUM = CM2.ROW_NUM - 1
JOIN 
    ORDERS O1 ON CM1.CUSTOMERID = O1.CUSTOMERID
             AND CM1.MONTH_START = DATEADD(MONTH, DATEDIFF(MONTH, 0, O1.ORDERDATE), 0)
JOIN 
    ORDERS O2 ON CM2.CUSTOMERID = O2.CUSTOMERID
             AND CM2.MONTH_START = DATEADD(MONTH, DATEDIFF(MONTH, 0, O2.ORDERDATE), 0)
             AND O1.PRODUCTNAME = O2.PRODUCTNAME 
--13.	Write a query to retrieve the products that have been ordered by a specific customer at least twice.
SELECT 
    PRODUCTNAME,
    COUNT(*) AS ORDER_COUNT
FROM 
    ORDERS
WHERE 
    CUSTOMERID = '1'
GROUP BY 
    PRODUCTNAME
HAVING 
    COUNT(*) >= 2;