USE goit;
SELECT COUNT(*) AS total_rows
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
UNION ALL

SELECT COUNT(*) AS total_rows
FROM orders
RIGHT JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
INNER JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
RIGHT JOIN categories ON products.category_id = categories.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id

UNION ALL

SELECT COUNT(*) AS total_rows
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
LEFT JOIN shippers ON orders.shipper_id = shippers.id
LEFT JOIN order_details ON orders.id = order_details.order_id
INNER JOIN products ON order_details.product_id = products.id
LEFT JOIN categories ON products.category_id = categories.id
LEFT JOIN suppliers ON products.supplier_id = suppliers.id;
