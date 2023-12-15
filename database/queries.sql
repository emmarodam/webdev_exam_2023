UPDATE orders 
SET order_created_by_user_fk = '7a8b409642' 
WHERE orders.order_id = '01c9513d84';


UPDATE orders 
SET order_delivered_at = '1702627698' 
WHERE orders.order_id = '0c70b13a87';

SELECT * FROM orders 
WHERE order_id LIKE '01c9513d84' 
AND order_created_by_user_fk LIKE '7a8b409642';
