SELECT
strftime('%Y-%m', order_date) AS order_month,
SUM(sales) AS total_monthly_sales,
sum(quantity) AS total_monthly_quantity,
sum(profit) AS total_monthly_profit
FROM 
	orders 
GROUP BY 
	strftime ('%Y-%m', order_date)
ORDER BY 
	order_month; 

SELECT 
	ship_mode, 
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit 
FROM 
	orders 
GROUP BY 
	ship_mode 
	
SELECT 
	segment,
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit 
FROM 
	orders 
GROUP BY 
	segment;

SELECT 
	category,
	sub_category,
	SUM(sales) AS total_sales,
	SUM(profit) AS total_profit 
FROM 
	orders 
GROUP BY 
	category,
	sub_category;

SELECT
	region,
	SUM(quantity) AS total_quantity 
FROM 
	orders 
GROUP BY 
	region;

SELECT 
	category,
	round(AVG(discount),2) AS average_discount
FROM 
	orders o 
GROUP BY 
	category 

SELECT 
	order_id,
	round(AVG(sales),2) AS average_sales,
	round(AVG(profit),2) AS average_profit
FROM 
	orders 
GROUP BY 
	order_id;
	
SELECT 
	product_name,
	SUM(profit) AS total_product_profit 
FROM 
	orders o 
GROUP BY 
	product_name
ORDER BY 
	total_product_profit DESC 
LIMIT 1

SELECT
	customer_id,
	customer_name,
	SUM(sales) AS total_sales 
FROM 
	orders o 
GROUP BY 
	customer_id,
	customer_name
ORDER BY 
	total_sales DESC 
LIMIT 5;

SELECT 
	strftime('%Y',order_date) AS order_year,
	COUNT(DISTINCT order_id) AS order_placed 
FROM 
	orders 
GROUP BY 
	order_year;
	
SELECT 
	COUNT(order_id) AS returns_count 
FROM 
	"returns" 

SELECT
	category,
	COUNT(DISTINCT order_id) AS orders_count 
FROM 
	orders 
GROUP BY 
	category 
ORDER BY 
	orders_count DESC 
LIMIT 1
