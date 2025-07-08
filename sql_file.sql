-- Total Sales
SELECT SUM(sales) AS total_sales FROM superstore_final_dataset;

-- Monthly Sales Summary
SELECT 
  DATE_TRUNC('month', order_date) AS month,
  SUM(sales) AS monthly_sales
FROM superstore_final_dataset
GROUP BY month
ORDER BY month;

-- Top 10 Customers
SELECT 
  customer_id,
  customer_name,
  SUM(sales) AS total_sales
FROM superstore_final_dataset
GROUP BY customer_id, customer_name
ORDER BY total_sales DESC
LIMIT 10;
