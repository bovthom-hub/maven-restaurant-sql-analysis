-- Candice Morrison
-- Project: Maven Analytics Restaurant Order Analyis
-- Purpose : Solve the following objectives ( Explore Menu table, Explore Items table and Analyze Customer Behavior.)
USE restaurant_db;
				-- Objective 1- Explore the Menu_items_Table
SELECT *
FROM menu_items;
-- 1.Find the number of items on the menu
SELECT COUNT(*) 
FROM menu_items ;

-- 2 What are the least and most expensive items on the menu?
SELECT * FROM menu_items
ORDER BY price DESC;
SELECT * FROM menu_items
ORDER BY price ASC;

-- 3. How many Italian dishes are on the menu ?
SELECT COUNT(*) 
FROM menu_items
WHERE category='Italian';

-- 4.  What are the least and most expensive Italian dishes on the menu
SELECT * 
FROM menu_items
WHERE category='Italian'
ORDER BY price ;

SELECT *
FROM menu_items
WHERE category='Italian'
ORDER BY price DESC;

-- 5 How many dishes are in each category? 
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- 6 What is the average price within each category?
SELECT  category, AVG(menu_item_id) AS avg_num_dishes
FROM menu_items
GROUP BY category;

				-- Obejective 2-Explore the order_details table
-- View order_details table 
SELECT *
FROM order_details;	

-- 1 What is the date range of the table?
SELECT  MIN(order_date), 
		MAX(order_date)
		FROM order_details;	

-- 2 How many orders were within the date range? 
SELECT COUNT(DISTINCT order_id) 
FROM order_details;

-- 3 How many items were ordered within this date range?
SELECT COUNT(*) 
FROM order_details;

-- 4 Which orders has the most of items?
SELECT order_id, COUNT(item_id) as num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items ; DESC

-- 5 How many orders had more than 12 items?

SELECT COUNT(*) FROM
(    SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12)  AS num_orders;

								-- Obejective 3-Analyze Customer behavior
 --  combine the menu items and order details table into a single table
SELECT * FROM order_details od 
LEFT JOIN menu_items mi
ON od.item_id =mi.menu_item_id;

-- 1 what were the least and most ordered items -- what categories were they in?
SELECT item_name, COUNT(order_details_id)AS num_purchases FROM order_details od 
LEFT JOIN menu_items mi
ON od.item_id =mi.menu_item_id
GROUP BY item_name
ORDER BY num_purchases DESC;

-- 2. What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price)AS total_spend FROM order_details od 
LEFT JOIN menu_items mi
ON od.item_id =mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- 3. View the details of the highest spend order. Insights ppl are spending money on Italian food 
SELECT order_id, category, COUNT(item_id) AS num_items FROM order_details od 
LEFT JOIN menu_items mi
ON od.item_id =mi.menu_item_id
WHERE order_id IN (440, 2075, 1957,330, 2675)
GROUP BY order_id, category;
