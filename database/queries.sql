INSERT INTO orders
    order_id, 
    order_created_by_user_fk, 
    order_created_at, 
    order_updated_at, 
    order_deleted_at, 
    order_delivered_at) 
 VALUES (
     'bin2hex(random_bytes(16)',
     'adb2b49e5b',
     'time()',
     '0',
     '0',
     'time()')