SELECT * FROM online_sales

-- total product

select count(*) as total_product from online_sales

-- Average product rating
select avg(rating) as avg_rating
from online_sales

-- average product price
select avg("current/discounted_price")as avg_price
from online_sales

-- top 10 product analysis
select title ,number_of_reviews from online_sales
order by number_of_reviews desc limit 10;

-- top 10 product by demand
select title,bought_in_last_month
from online_sales
order by bought_in_last_month desc
limit 10

-- pricing analysis
select avg("current/discounted_price") 
from online_sales
where is_best_seller='Best Seller'

-- product with highest discount
select title,discount_percentage
from online_sales
order by discount_percentage desc
limit 10;

-- Marketing Analysis

-- sponsord vs organic Products
select is_sponsored ,count(*)
from online_sales
group by is_sponsored

-- average price of sponsored product
select is_sponsored, avg("current/discounted_price")
from online_sales
group by is_sponsored

-- rating vs demand
select rating,avg(bought_in_last_month)
from online_sales
group by rating
order by rating desc

-- best seller analysis
select is_best_seller,avg(rating)
from online_sales
group by is_best_seller

-- top producct by reviewa(using rating)

select title,
	   number_of_reviews,
	   rank() over(order by number_of_reviews desc) as review_rank
from online_Sales
limit 10;

-- highest demand producct (window ranking)
select title,
bought_in_last_month,
dense_rank() over(order by bought_in_last_month desc) as demand_rank
from online_sales
limit 10;

-- price comparison with average price
select title,
"current/discounted_price",
avg("current/discounted_price")over() as avg_price,
"current/discounted_price" - avg("current/discounted_price") over() as price_difference
from online_sales

-- rating raking
select title,
rating,
rank() over (partition by is_best_seller order by rating desc) as rating_rank
from online_sales