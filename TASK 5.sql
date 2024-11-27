1)select product_id,sum(price*quantity_sold) as total_revenue from sales s group by product_id

2)select p.product_name,(select count(s.product_id),sum(price*quantity) as sales_revenue where s.product_id=p.product_id from product p order by sales_revenue desc limit 3)

3)select count(gu.user_id) as gold_users_count from users u where is_signed_up =TRUE and membership_type='gold'

4) select sum(amount) as gold_revenue from users u join sales s on u.user_id=s.user_id where u.membership_type='gold'

6)select user_id,current_date as days from gold_users_signup where membership_type ='gold' group by user_id

7) select p.product_name,p.product_id,count(*) as purchase_count,s.product_id,sum(s.units_sold) as total_units from users u join sales s on u.user_id=s.user_id where u.membership_type='gold' group by
s.product_id,p.product_name order by total_units_sold desc limit

8)select year(sale_date) as sales_year,sum(amount)as total_revenue from sales group by year(sale_date) order by sale_year;

10)select membership_type,count(*) as total_signup,avg(case when membership_type='gold'
	then 1 else 0
end) as average_gold_signup,avg(case when membership_type<>'gold' then 1 else 0 end) as regular_signup from users group by membership_type;

11)select u.user_id,count(o.order_id) as total_orders from user u join orders o on u.user_id=o.user_id where u.membership_type='gold' group by u.user_id;

13)select o.user_id,o.order_id,o.order_date from orders o join (select user_id,min(order_date) as first_order_date from orders group by user_id

16)select user_id,count(*) as purchase_count,rank() over (partition by user_id order by purchase_count desc) as rank from users where rank=1 group by user_id,item_id

15) select item_id,item_name,count(*) as total_purchases from users group by item_id,item_name order by total_purchases desc limit 1

