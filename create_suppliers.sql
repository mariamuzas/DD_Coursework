select "Inside script <create_suppliers.sql>" as ``;
DROP TABLE IF EXISTS Suppliers;
CREATE TABLE Suppliers (
`supplier_id` int(11) NOT NULL,
`product` text NOT NULL,
`company_name` text NOT NULL,
`phone` text NOT NULL,
`postcode` text NULL,
PRIMARY KEY(`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;