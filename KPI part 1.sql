--Taking a look at the dataset
SELECT * FROM pizza_sales

-- Total revenue generated
SELECT SUM(total_price) AS total_revenue_generated FROM pizza_sales

-- Average price per order
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS average_order_price FROM pizza_sales

-- Total pizzas sold
SELECT SUM(quantity) AS total_pizza_sold FROM pizza_sales

--Total orders placed
SELECT COUNT(DISTINCT order_id) AS total_orders FROM pizza_sales

--Average pizzas per order
SELECT 
CAST(
	CAST(SUM (quantity) AS DECIMAL (10,2)) / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) 
AS DECIMAL (10,2)) 
AS average_pizza_per_order FROM pizza_sales 



