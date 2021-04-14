select "Inside script <load_customer_orders_products.sql>" as ``;
LOAD DATA LOCAL INFILE 'customers-orders-products-data.csv'
  INTO TABLE Customer_Orders_Products
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'