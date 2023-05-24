USE hw_2;
CREATE TABLE orders
(
orderid INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
emolyeeid VARCHAR(5) NOT NULL,
amount DECIMAL(5,2) NOT NULL,
orderstatus VARCHAR(20) NOT NULL
);

insert into orders (emolyeeid, amount, orderstatus) values
('e03', 15.00, "open"),
('e01', 25.50, "open"),
('e05', 100.70, "closed"),
('e02', 22.18, "open"),
('e04', 9.50, "canceled"),
('e04', 99.99, "open");

select orderid, orderstatus,
CASE
    WHEN orders.orderstatus = "open" THEN "Order is in open state"
    WHEN orders.orderstatus = "closed" THEN "Order is closed"
    ELSE "Order is cancelled"
END
from orders;