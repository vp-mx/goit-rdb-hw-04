USE goit;
WITH tmp_table as (SELECT orders.id              AS order_id,
                    customers.name         AS customer_name,
                    employees.last_name    AS employee_last_name,
                    shippers.name          AS shipper_name,
                    order_details.quantity AS order_quantity,
                    products.name          AS product_name,
                    categories.name        AS category_name,
                    suppliers.name         AS supplier_name
             FROM orders
                      INNER JOIN customers ON orders.customer_id = customers.id
                      INNER JOIN employees ON orders.employee_id = employees.employee_id
                      INNER JOIN shippers ON orders.shipper_id = shippers.id
                      INNER JOIN order_details ON orders.id = order_details.order_id
                      INNER JOIN products ON order_details.product_id = products.id
                      INNER JOIN categories ON products.category_id = categories.id
                      INNER JOIN suppliers ON products.supplier_id = suppliers.id)
SELECT category_name,
COUNT(*) AS rows_count,
AVG(order_quantity) AS avg_quantity
FROM tmp_table
GROUP BY category_name
HAVING AVG(order_quantity) > 21;