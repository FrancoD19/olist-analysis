Select
	t.product_category_name_english,
    round(AVG (oi.price), 2) AS ticket_promedio,
    COUNT(distinct oi.order_id) AS total_pedidos
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p ON oi.product_id = p.product_id
JOIN product_category_name_translation t ON p.product_category_name = t.`ï»¿product_category_name`
group by t.product_category_name_english
order by ticket_promedio desc
LIMIT 10;