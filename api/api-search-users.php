<?php
header('Content-Type: application/json');
require_once __DIR__.'/../_.php';
try{
  // TODO: validate $_POST['query']
  $db = _db();
  $q = $db->prepare('SELECT * FROM users 
                    WHERE user_id LIKE :user_id
                    LIMIT 5
  ');
  $q->bindValue(':user_id', "%{$_POST['query']}%");
  $q->execute();
  $users = $q->fetchAll();
  echo json_encode($users);

}catch(Exception $e){
    $status_code = !ctype_digit($e->getCode()) ? 500 : $e->getCode();
    $message = strlen($e->getMessage()) == 0 ? 'error - '.$e->getLine() : $e->getMessage();
    http_response_code($status_code);
    echo json_encode(['info'=>$message]);
}