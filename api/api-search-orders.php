<?php
header('Content-Type: application/json');
require_once __DIR__.'/../_.php';
try{
  // TODO: validate $_POST['query']
  $db = _db();
  $q = $db->prepare('SELECT * FROM orders 
                    WHERE order_id LIKE :order_id
                    LIMIT 5
  ');
  $q->bindValue(':order_id', "%{$_POST['query']}%");
  $q->execute();
  $orders = $q->fetchAll();
  echo json_encode($orders);

}catch(Exception $e){
    $status_code = !ctype_digit($e->getCode()) ? 500 : $e->getCode();
    $message = strlen($e->getMessage()) == 0 ? 'error - '.$e->getLine() : $e->getMessage();
    http_response_code($status_code);
    echo json_encode(['info'=>$message]);
}