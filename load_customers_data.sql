select "Inside script <load_customers.sql>" as ``;
LOAD DATA LOCAL INFILE 'customers-data.csv'
  INTO TABLE Customers
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'