select "Inside script <create_products.sql>" as ``;
DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
`product_code` INT(11) NOT NULL,
`supplier_id` INT(11) NOT NULL,
`product_name` text NOT NULL,
`product_type` float NOT NULL,
PRIMARY KEY(`product_code`),
FOREIGN KEY (`supplier_id`) REFERENCES Suppliers(supplier_id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;