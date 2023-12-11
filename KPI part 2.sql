SELECT * FROM pizza_sales

SELECT DATENAME(MONTH, order_date) AS order_month, COUNT(DISTINCT order_id) AS pizza_count
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date), MONTH(order_date)
--ORDER BY MONTH(order_date)
ORDER BY COUNT(DISTINCT order_id) DESC

SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT order_ID) AS pizza_count
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)
ORDER BY COUNT(DISTINCT order_ID) DESC

SELECT pizza_category, SUM(total_price) AS total_sales, SUM(total_price) *100 / (SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date) = 1) AS sales_by_category
FROM pizza_sales
WHERE MONTH(order_date) = 1
GROUP BY pizza_category
ORDER BY sales_by_category DESC

SELECT pizza_size, SUM(total_price) AS total_sales, SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales WHERE MONTH(order_date)= 4) AS sales_by_size
FROM pizza_sales
WHERE MONTH(order_date)= 4
GROUP BY pizza_size
ORDER BY sales_by_size DESC

SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue DESC

SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_revenue

SELECT TOP 5 pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC

SELECT TOP 5 pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity
