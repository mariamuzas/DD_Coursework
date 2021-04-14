select "Inside script <load_products.sql>" as ``;
LOAD DATA LOCAL INFILE 'products-data.csv'
  INTO TABLE Products
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'