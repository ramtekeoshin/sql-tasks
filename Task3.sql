--TASK 3
1)select * from employees where department ='IT' and salary>50000;

2)select o.order_id,c.customer_id,c.contact_number,o.order_date,o.total_amount from orders o right join customers c on o.customer_id=c.customer_id

3)select product_id,sum(quantity) as tottal_quantity from sales group by product_id;

4)select avg(quantity),extract(month from sale_date) as per_month from sales group by per_month;

5)select upper(product_name) as upper from products;

6)select * from events where eventdate between '2024-9-10' and current_date + Interval '30 days'

7)select * from employees e where e.salary > (select avg(salary) from employees);

11)select participantid,participantname,score rank() over (order by score desc) as rankscore from participant;

15)delete from customers where city='delhi'

14)update products set price=price*1.10 where category='Electronics'

13)select product_id,sale_date,sum(quantity) over(partition by product_id order by sale_date) as runningtotalfrom sales order by product_id,sale_date

9)create view activecustomers as
select distinct c.customer_id,c.customer_name,c.city from customers c join sales s on c.customer_id=s.customer_id where sale_date

create or replace upd_last
returns trigger on $$
begin
set new.lastmodified=now()
end;

10)select count(*) as nullamount from sales where total_amount is null

