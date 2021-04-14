select "Inside script <create_customers.sql>" as ``;
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
`customer_id` int(11) NOT NULL,
`customer_forename` text NOT NULL,
`customer_surname` text NOT NULL,
`phone` text NOT NULL,
`address` text NULL,
`postcode` text NULL,
PRIMARY KEY(`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;