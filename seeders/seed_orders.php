<?php
require_once __DIR__.'/../_.php';
require_once __DIR__ . '/Faker/autoload.php';
$faker = Faker\Factory::create();

try {
    $db = _db();

    // Get users whose role is "customer" to assign to orders
    $user_role_name = 'customer';
    $q = $db->prepare("SELECT user_id FROM users WHERE user_role_name = :user_role");
    $q->bindValue(':user_role', $user_role_name);
    $q->execute();
    $customers_ids = $q->fetchAll(PDO::FETCH_COLUMN);

    // Get users whose role is "partner" to assign to orders
    $user_role_name = 'partner';
    $q = $db->prepare("SELECT user_id FROM users WHERE user_role_name = :user_role");
    $q->bindValue(':user_role', $user_role_name);
    $q->execute();
    $partners_ids = $q->fetchAll(PDO::FETCH_COLUMN);

    // Get items_ids to assign to order
    $q = $db->prepare("SELECT item_id FROM items");
    $q->execute();
    $items_ids = $q->fetchAll(PDO::FETCH_COLUMN);

    $q = $db->prepare('DROP TABLE IF EXISTS orders');
    $q->execute();

    $q = $db->prepare('
        CREATE TABLE orders(
            order_id            VARCHAR(255),
            order_created_by    VARCHAR(255),
            order_delivered_by  VARCHAR(255),
            order_created_at    INT,
            order_updated_at    INT,
            order_deleted_at    INT,
            order_delivered_at  INT,
            PRIMARY KEY (order_id)
        )
    ');
    $q->execute();

    $values = '';
    for ($i = 0; $i < 100; $i++) {
        $order_id = bin2hex(random_bytes(5));
        $order_created_by = $customers_ids[array_rand($customers_ids)];
        $order_delivered_by = $partners_ids[array_rand($partners_ids)];
        $order_created_at = time();
        $order_updated_at = 0;
        $order_deleted_at = 0;
        $order_delivered_at = 0;

        $values .= "('$order_id', '$order_created_by', '$order_delivered_by', $order_created_at, $order_updated_at, 
            $order_deleted_at, $order_delivered_at),";
    }
    $values = rtrim($values, ',');
    $q = $db->prepare("INSERT INTO orders VALUES $values");
    $q->execute();

    echo "+ orders" . PHP_EOL;
} catch (Exception $e) {
    echo $e->getMessage(); // Print the error message
}
?>



