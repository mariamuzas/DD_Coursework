select "1" as ``;
select "Inside script <top-level.sql>" as ``;
select "-----------------------------" as ``;
select "Switching the foreign keys ON/OFF" as ``;
-- 
-- If you have problems with legacy data in your database,
-- as a result of not cascading deletes in child tables,
-- then you can turn foreign_keys to OFF and call this script 
-- a few times to ensure that your code drops tables appropiately.
-- Make sure to turn it ON again though to ensure your keys are 
-- doing what they are there for.
--
-- to drop the tables change this to '0'
-- Enable checks:
SET FOREIGN_KEY_CHECKS = 1;
--
select "2" as ``;
source create_suppliers.sql;
select "3" as ``;
source create_customers.sql;
select "4" as ``;
source create_customer_orders.sql;
select "5" as ``;
source create_products.sql;
select "6" as ``;
source create_customer_orders_products.sql;
select "7" as ``;
source load_suppliers_data.sql;
select "8" as ``;
source load_customers_data.sql;
select "9" as ``;
source load_customer_orders_data.sql
select "10" as ``;
source load_products_data.sql;
select "11" as ``;
source load_customer_orders_products_data.sql;
select "12" as ``;
source report.sql;