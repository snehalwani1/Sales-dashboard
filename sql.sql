SELECT * FROM sales.transactions;
select count(*) from sales.transactions;
select * from sales.date;
select  sales.transactions.*, sales.date.*
from sales.transactions
inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020;

select  SUM(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020;

select  SUM(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2019;

select  SUM(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2019 and sales.transactions.market_code='Mark001';

select * from sales.transactions where transactions.sales_amount<=0;

use sales;
select distinct (transactions.currency) from transactions;
-- 'INR'
-- 'INR\r'
-- 'USD'
-- 'USD\r' 
select count(*) from transactions where transactions.currency='INR\r';
-- output= '150000'

select count(*) from transactions where transactions.currency='INR';
-- output= 279 records

select count(*) from transactions where transactions.currency='USD';
-- output= 2 records

select count(*) from transactions where transactions.currency='USD\r';
-- output= 2 records

select * from transactions where transactions.currency='USD' or 
transactions.currency='USD\r';

select * from transactions;

-- Revenue of 2020 
select  SUM(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020 and transactions.currency='INR\r' or 
transactions.currency='USD\r';

-- Revenue of jan
select  SUM(sales.transactions.sales_amount)
from sales.transactions
inner join sales.date
on sales.transactions.order_date = sales.date.date
where sales.date.year=2020 and date.month_name='January'
and  (transactions.currency='INR\r' or 
transactions.currency='USD\r');
