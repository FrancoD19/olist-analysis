SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS mes,
    ROUND(SUM(oi.price), 2) AS revenue_total,
    COUNT(DISTINCT o.order_id) AS total_pedidos
FROM olist_orders_dataset o
JOIN olist_order_items_dataset oi ON o.order_id = oi.order_id
WHERE o.order_status = 'delivered'
GROUP BY mes
ORDER BY mes ASC;


CREATE INDEX idx_orders_id ON olist_orders_dataset(order_id);
CREATE INDEX idx_orders_status ON olist_orders_dataset(order_status


SET SESSION wait_timeout = 600;
SET SESSION interactive_timeout = 600;
SET SESSION net_read_timeout = 600;
SET SESSION net_write_timeout = 600;