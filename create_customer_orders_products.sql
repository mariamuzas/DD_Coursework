select "Inside script <create_customer_orders_products.sql>" as ``;
DROP TABLE IF EXISTS Customer_Orders_Products;
CREATE TABLE Customer_Orders_Products (
`order_id` INT(11) NOT NULL,
`product_id` INT(11) NOT NULL,
`quantity` INT(11) NOT NULL,
FOREIGN KEY(order_id) REFERENCES Customer_Orders(order_no) ON DELETE CASCADE,
FOREIGN KEY (`product_id`) REFERENCES Products(product_code) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;