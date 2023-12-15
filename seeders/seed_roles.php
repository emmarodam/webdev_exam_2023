<?php
require_once __DIR__.'/../_.php';
require_once __DIR__ . '/Faker/autoload.php';
$faker = Faker\Factory::create();

try {
    $db = _db();
    $q = $db->prepare('DROP TABLE IF EXISTS roles');
    $q->execute();

    $q = $db->prepare('
        CREATE TABLE roles(
            role_id           VARCHAR(255),
            role_name         VARCHAR(20),
            role_created_at   INT,
            role_updated_at   INT,
            PRIMARY KEY (role_id)
        )
    ');
    $q->execute();

    $created_at = time();
    $q = $db->prepare("INSERT INTO roles VALUES 
                      ('113201f10aaa410f9b7b9f0a6477b443', 'partner', $created_at, 0),
                      ('a3280a85612746c38a17465530739090', 'customer', $created_at, 0)");
    $q->execute();

    echo "+ roles" . PHP_EOL;
} catch (Exception $e) {
    echo $e->getMessage(); // Output the error message for debugging
}




