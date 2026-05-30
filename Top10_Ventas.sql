SELECT 
    t.product_category_name_english,
    ROUND(SUM(oi.price), 2) AS revenue_total
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p ON oi.product_id = p.product_id
JOIN product_category_name_translation t ON p.product_category_name = t.product_category_name
GROUP BY t.product_category_name_english
ORDER BY revenue_total DESC
LIMIT 10;

describe product_category_name_translation;

SELECT 
    t.product_category_name_english,
    ROUND(SUM(oi.price), 2) AS revenue_total
FROM olist_order_items_dataset oi
JOIN olist_products_dataset p ON oi.product_id = p.product_id
JOIN product_category_name_translation t ON p.product_category_name = t.`ï»¿product_category_name`
GROUP BY t.product_category_name_english
ORDER BY revenue_total DESC
LIMIT 10;

CREATE INDEX idx_items_product ON olist_order_items_dataset(product_id);
CREATE INDEX idx_products_category ON olist_products_dataset(product_category_name);