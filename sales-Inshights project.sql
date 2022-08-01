show databases;
use sales;
show tables;

## To show only customer_type as E-commerece
select * from customers where customer_type='E-Commerce';

select * from products;

select * from transactions;
SELECT * FROM sales.markets;
desc sales.markets;

use sales;

select * from markets;

SELECT * FROM sales.transactions;

### Total Transaction in INR.
select count(*) from sales.transactions where currency='INR';

### Total Transaction in USD.
select count(*) from sales.transactions where currency='USD';

### Transaction performed in Chennai and total count.
select * from sales.transactions where market_code='Mark001';
select count(*) from sales.transactions where market_code='Mark001';

### TRansaction performed in delhi and total count of transaction.
select * from sales.transactions where market_code='Mark002';
select count(*) from sales.transactions where market_code='MArk002';

SELECT * FROM sales.date;
select * from sales.date where year='2020';

### Total Transactions of the year 2020 with and total revenue
select sales.transactions.*,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year='2020';
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year='2020';

### Total Transactions of the year 2019 with and total revenue
select sales.transactions.*,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year='2019';
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year='2019';

### Total Transactions of the year 2018 with and total revenue
select sales.transactions.*,sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year='2018';
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year='2018';

###Total revenue in Chennai
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.transactions.market_code='Mark001';

SELECT * FROM sales.customers;

/* Let's Check Total Customers */
select count(*) from sales.customers;

### Total of Brick & Mortar type customers
select count(*) from sales.customers where customer_type='Brick & Mortar';

### Total of E-Commerce Customers
select count(*) from sales.customers where customer_type='E-Commerce';

