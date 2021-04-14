select "Inside script <create_customer_orders.sql>" as ``;
DROP TABLE IF EXISTS Customer_Orders;
CREATE TABLE Customer_Orders (
`order_no` INT(11) NOT NULL,
`customer_id` INT(11) NOT NULL,
PRIMARY KEY(`order_no`),
FOREIGN KEY (`customer_id`) REFERENCES Customers(customer_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;