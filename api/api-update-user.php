<?php
require_once __DIR__ . '/../_.php';

try {
  session_start();
  if( ! isset($_SESSION['user']['user_id']) ){
    throw new Exception('user not logged in', 400);
  }

  $user_id = $_SESSION['user']['user_id'];
  $db = _db();
  $q = $db->prepare('
      UPDATE users 
      SET user_name = :user_name, 
          user_last_name = :user_last_name,
          user_email = :user_email,
          user_password = :user_password,
          user_address = :user_address,
          user_updated_at = :time
      WHERE user_id = :user_id
  ');

  $user_name = $_POST['user_name'];
  $user_last_name = $_POST['user_last_name'];
  $user_email = $_POST['user_email'];
  $user_password = password_hash($_POST['user_password'], PASSWORD_DEFAULT);
  $user_address = $_POST['user_address'];
  $user_updated_at = time();

  $q->bindParam(':user_name', $user_name);
  $q->bindParam(':user_last_name', $user_last_name);
  $q->bindParam(':user_email', $user_email);
  $q->bindParam(':user_password', $user_password);
  $q->bindParam(':user_address', $user_address);
  $q->bindValue(':time', time());
  $q->bindValue(':user_id', $user_id);

  $q->execute();
  $counter = $q->rowCount();
  if( $counter != 1 ){
    throw new Exception('could not update user', 500);
  }
  http_response_code(200);
}catch(Exception $e){
  try{
    if( ! $e->getCode() || ! $e->getMessage()){ throw new Exception(); }
    http_response_code($e->getCode());
    echo json_encode(['info'=>$e->getMessage()]);
  }catch(Exception $ex){
    http_response_code(500);
    echo json_encode($ex); 
  }
}