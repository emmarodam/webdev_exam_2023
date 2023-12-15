<?php
require_once __DIR__.'/../_.php';

try {
    _validate_user_name();
    _validate_user_last_name();
    _validate_user_email();
    _validate_user_password();
    _validate_user_confirm_password();

    $db = _db();
    $stmt = $db->prepare('
        INSERT INTO users 
        (user_id, user_name, user_last_name, user_email, user_password, user_address, user_role_name, user_created_at, user_updated_at, user_deleted_at, user_is_blocked)
        VALUES 
        (:user_id, :user_name, :user_last_name, :user_email, :user_password, :user_address, :user_role_name, :user_created_at, :user_updated_at, :user_deleted_at, :user_is_blocked)
    ');

    $user_id = bin2hex(random_bytes(5));
    $user_name = $_POST['user_name'];
    $user_last_name = $_POST['user_last_name'];
    $user_email = $_POST['user_email'];
    $user_password = password_hash($_POST['user_password'], PASSWORD_DEFAULT);
    $user_role_name = $_POST['user_role_name'];
    $user_address = $_POST['user_address'];
    $user_created_at = time();
    $user_updated_at = 0;
    $user_deleted_at = 0;
    $user_is_blocked = rand(0, 1);

    $stmt->bindParam(':user_id', $user_id);
    $stmt->bindParam(':user_name', $user_name);
    $stmt->bindParam(':user_last_name', $user_last_name);
    $stmt->bindParam(':user_email', $user_email);
    $stmt->bindParam(':user_password', $user_password);
    $stmt->bindParam(':user_address', $user_address);
    $stmt->bindParam(':user_role_name', $user_role_name);
    $stmt->bindParam(':user_created_at', $user_created_at);
    $stmt->bindParam(':user_updated_at', $user_updated_at);
    $stmt->bindParam(':user_deleted_at', $user_deleted_at);
    $stmt->bindParam(':user_is_blocked', $user_is_blocked);

    $stmt->execute();
    $insertedUserId = $db->lastInsertId();

    echo json_encode(['user_id' => $insertedUserId]);
} catch (Exception $e) {
    http_response_code($e->getCode() ?: 500);
    echo json_encode(['info' => $e->getMessage()]);
}



