select "Inside script <load_suppliers.sql>" as ``;
LOAD DATA LOCAL INFILE 'suppliers-data.csv'
  INTO TABLE Suppliers
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'