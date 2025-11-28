drop table if exists zepto;

create table zepto(
sku_id SERIAL PRIMARY KEY,
CATEGORY VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountpercent NUMERIC(5,2),
availablequantity INTEGER,
discountedsellingprice NUMERIC(8,2),
weightingms INTEGER,
outofstock BOOLEAN,
quantity INTEGER
);

--DATA EXPLORATION

-- COUNT OF ROWS
SELECT COUNT(*) FROM ZEPTO;

--sample data
SELECT*FROM ZEPTO
LIMIT 10;

--null values
SELECT*FROM ZEPTO
WHERE name IS NULL
OR 
category IS NULL
OR 
mrp IS NULL
OR
discountpercent IS NULL
OR
discountedsellingprice IS NULL
OR
availablequantity IS NULL
OR
outifstock IS NULL
OR
quantity IS NULL;

--DIFFERENT PRODUCT CATEGORIES
select distinct category
from zepto
order by category;

--product in stock vs out of stock
SELECT outifstock, COUNT (sku_id)
FROM zepto
GROUP BY outifstock;

--product name present multiple times
SELECT name, COUNT (sku_id) as "Number of SKUs"
FROM zepto
GROUP BY name
HAVING count (sku_id)>1
order by count (sku_id) desc;

--data cleaning

--product with price = 0
select * from zepto 
where mrp = 0 or discountedsellingprice = 0;

delete from zepto
where mrp = 0;

--convert paise to rupees
update zepto
set mrp = mrp/100.0,
discountedsellingprice = discountedsellingprice/100.0;

select mrp, discountedsellingprice from zepto;
-- Q1. Find the top 10 best-value products based on the discount percentage.
select distinct name, mrp, discountpercent
from zepto
order by discountpercent desc 
limit 10;

--Q2.What are the Products with High MRP but Out of Stock.
select distinct name,mrp
from zepto
where outifstock = TRUE and mrp>300
order by mrp desc;

--Q3.Calculate Estimated Revenue for each category
select category,
sum(discountedsellingprice * availablequantity) as total_revenue
from zepto
group by category
order by total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
select distinct name,mrp,discountpercent
from zepto
where mrp>500 and discountpercent<10
order by mrp desc, discountpercent desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category,
round(avg(discountpercent),2) as avg_discount
from zepto
group by category
order by avg_discount desc
limit 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
select distinct name, weightingms, discountedsellingprice,
round(discountedsellingprice/weightingms,2) as price_per_gms
from zepto
where weightingms >=100
order by price_per_gms;

--Q7.Group the products into categories like Low, Medium, Bulk.
select distinct name, weightingms,
case when weightingms < 1000 then 'low'
     when weightingms < 5000 then 'medium'
	 else 'bulk'
	 end as weight_category
from zepto;

--Q8.What is the Total Inventory Weight Per Category 
select category,
sum (weightingms * availablequantity) as total_weight
from zepto
group by category
order by total_weight;

