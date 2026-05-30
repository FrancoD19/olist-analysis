SELECT 
    CASE 
        WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 'tarde'
        ELSE 'tiempo_correcto'
    END AS estado_entrega,
    COUNT(*) AS total_pedidos,
    ROUND(COUNT(*) * 100.0 / (
        SELECT COUNT(*) FROM olist_orders_dataset 
        WHERE order_status = 'delivered' 
        AND order_delivered_customer_date IS NOT NULL
    ), 2) AS porcentaje
FROM olist_orders_dataset
WHERE order_status = 'delivered'
AND order_delivered_customer_date IS NOT NULL
GROUP BY estado_entrega
ORDER BY total_pedidos DESC;