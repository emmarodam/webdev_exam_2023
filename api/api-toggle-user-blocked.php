<?php

header('Content-Type: application/json');
require_once __DIR__.'/../_.php';

try {
    $user_id = $_GET['user_id'];
    $db = _db();

    //Current status
    $q = $db->prepare("SELECT user_is_blocked 
                      FROM users 
                      WHERE user_id = :user_id");
    $q->bindValue(':user_id', $user_id);
    $q->execute();
    $current_blocked_status = $q->fetchColumn();

    // Toggle the status
    $new_blocked_status = ($current_blocked_status == 0) ? 1 : 0;

    // Update the user's blocked status in the database
    $q = $db->prepare("UPDATE users 
                      SET user_is_blocked = :new_blocked_status 
                      WHERE user_id = :user_id");
    $q->bindValue(':user_id', $user_id);
    $q->bindValue(':new_blocked_status', $new_blocked_status);
    $q->execute();

    echo json_encode(['info' => 'User status updated successfully']);
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['info' => 'Failed to update user status']);
}
?>
