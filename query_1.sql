USE hw_2;
CREATE TABLE sales
(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
order_date DATE NOT NULL,
bucket VARCHAR(30) NOT NULL
);

insert into sales (order_date, bucket) values
('2021-01-01', "101 to 300"),
('2021-01-02', "101 to 300"),
('2021-01-03', "less than equal to 100"),
('2021-01-04', "101 to 300"),
('2021-01-05', "greater than 300");

set sql_safe_updates = 0;

update sales set bucket=
CASE
	WHEN sales.bucket = "less than equal to 100" then "Маленький заказ"
    WHEN sales.bucket = "101 to 300" then "Средний заказ"
    else "Большой заказ"
end;

select * from sales