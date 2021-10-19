
*---- Overall Performance by Year ----*

SELECT YEAR(order_date) AS years , SUM(sales) AS sales,
COUNT(order_id) AS number_of_order
FROM dqlab_sales_store
WHERE order_status= 'order finished'
GROUP BY years;



*---- Overall Performance by Product Sub Category ----*
SELECT YEAR(order_date) AS years, product_sub_category, SUM(sales) as sales
FROM dqlab_sales_store
WHERE order_status = 'order finished' AND YEAR (order_date) > 2010
GROUP BY years, product_sub_category
ORDER BY years, sales DESC;
