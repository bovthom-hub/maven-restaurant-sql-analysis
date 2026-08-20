# maven-restaurant-sql-analysis
SQL analysis of restaurant orders and menu performance using the Maven Analytics Restaurant Order Analysis dataset.
Maven Restaurant Order Analysis

Project Overview

This project analyzes restaurant order data from the Maven Analytics Restaurant Order Analysis data set. I used SQL to examine menu performance, customer ordering patterns, sales activity, and the popularity of different menu categories.

This project shows my ability to join tables, aggregate data, answer business questions, and communicate findings from a relational database.

Business Objective
The restaurant wants to better understand the following business questions:
- Which menu items are ordered most frequently
- Which menu items are ordered least frequently
- Which categories are the most popular
- Which orders contain the largest number of items
- Which menu items and categories generate the most revenue
- How customer purchasing behavior changes over time

Dataset

Maven Analytics provided the dataset for the Restaurant Order Analysis project.

The analysis uses two main tables:

### `menu_items`

Contains information about the restaurant's menu.

| Column | Description |
|---|---|
| menu_item_id | Unique identification number for each menu item |
| item_name | Name of the menu item |
| category | Menu category |
| price | Price of the menu item |

### `order_details`

Contains information about customer orders.

| Column | Description |
|---|---|
| order_details_id | Unique identification number for each order line |
| order_id | Identification number for the customer order |
| order_date | Date the order was placed |
| order_time | Time the order was placed |
| item_id | Identification number of the menu item ordered |

Tools Used

- MySQL
- MySQL Workbench
- GitHub


SQL Skills Demonstrated

- `SELECT`
- `WHERE`
- `COUNT`
- `SUM`
- `AVG`
- `MIN` and `MAX`
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- `LEFT JOIN`
- Table aliases
- Aggregate functions
- Date filtering

Analysis Process

1. Reviewed the two tables and their columns.
2. Checked the date range represented in the order data.
3. Examined menu prices and categories.
4. Connected the tables using `item_id` and `menu_item_id`.
5. Counted how frequently each menu item was ordered.
6. Calculated sales and order-level results.
7. Sorted the results to identify top-performing and
   lower-performing items.
8. Summarized the most important business findings.
## Key Findings

The SQL analysis identified the most frequently ordered items, least frequently ordered items, most popular menu categories, and highest-spending orders. Detailed results are available in the SQL analysis file.

## Business Recommendations

- Continue monitoring popular menu items and category performance.
- Review lower-performing items to identify possible opportunities for improvement.
- Consider combining popular items into meal promotions.
