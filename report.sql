select "Inside script <report.sql>" as ``;

-- List all of the data in the database
select 'Here is the list of the data that you can find in the database' AS '';
SHOW TABLES;


-- List the first and second names of all customers, in reverse order of second name
select 'List of the first and second names of all customers, in reverse order of second name' AS '';

SELECT customer_forename, customer_surname 
FROM Customers 
ORDER BY customer_surname DESC;


-- List all customers who have ordered something
select 'List of the customers that have ordered something' AS '';

SELECT customers.customer_id, customer_forename, customer_surname 
FROM Customers 
WHERE customer_id
IN ( SELECT customer_id
    FROM Customer_Orders );

select 'Here is the list of the customers that have ordered something and the order number' AS '';

SELECT customer_forename, customer_surname, order_no 
FROM Customers 
INNER JOIN Customer_Orders 
ON customers.customer_id = Customer_Orders.customer_id;


-- Create a VIEW called SUPPLIERS_AND_PRODUCTS that contains the company names from SUPPLIERS and product names and prices from PRODUCTS
DROP VIEW IF EXISTS Suppliers_and_Products;
CREATE VIEW Suppliers_and_Products AS
    SELECT suppliers.company_name, products.product_name, products.product_price
    FROM Suppliers, Products
    WHERE suppliers.supplier_id = products.supplier_id;


select 'View created for Suppliers_andProducts' AS '';
SHOW FULL TABLES;

SELECT * FROM Suppliers_and_Products;