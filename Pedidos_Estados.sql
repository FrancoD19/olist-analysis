SET SESSION wait_timeout = 600;
SET SESSION interactive_timeout = 600;
SET SESSION net_read_timeout = 600;
SET SESSION net_write_timeout = 600;

CREATE INDEX idx_orders_customer ON olist_orders_dataset(customer_id);
CREATE INDEX idx_customers_id ON olist_customers_dataset(customer_id);

SELECT 
    c.customer_state,
    COUNT(DISTINCT o.order_id) AS total_pedidos
FROM olist_orders_dataset o
JOIN olist_customers_dataset c ON o.customer_id = c.customer_id
WHERE o.order_status = 'delivered'
GROUP BY c.customer_state
ORDER BY total_pedidos DESC
LIMIT 10;