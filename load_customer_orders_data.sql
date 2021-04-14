select "Inside script <load_customer_orders.sql>" as ``;
LOAD DATA LOCAL INFILE 'customers-orders-data.csv'
  INTO TABLE Customer_Orders
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'