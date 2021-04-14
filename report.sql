select "Inside script <report.sql>" as ``;

-- List all of the data in the database
SHOW TABLES;

-- List the first and second names of all customers, in reverse order of second name
SELECT customer_forename, customer_surname 
FROM Customers 
ORDER BY customer_surname DESC;

-- List all customers who have ordered something

SELECT customer_forename, customer_surname 
FROM Customers 
WHERE customer_id
IN ( SELECT customer_id
    FROM Customer_Orders );

SELECT customer_forename, customer_surname, order_no 
FROM Customers 
INNER JOIN Customer_Orders 
ON customers.customer_id = Customer_Orders.customer_id;

-- Create a VIEW called SUPPLIERS_AND_PRODUCTS that contains the company names from SUPPLIERS and product names and prices from PRODUCTS
CREATE VIEW Suppliers_and_Products AS
    SELECT suppliers.company_name, products.product_name, products.product_name
    FROM Suppliers 