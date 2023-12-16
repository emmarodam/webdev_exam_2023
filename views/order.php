<?php
require_once __DIR__ . '/../_.php';
require_once __DIR__ . '/_header.php';

$order_id = $_GET['order_id'];


// TODO: _validate_user_id() in the master file
$db = _db();
$q = $db->prepare('SELECT * FROM orders WHERE order_id = :order_id');
// $q = $db->prepare('CALL get_order_by_id(:order_id)');
$q->bindValue(':order_id', $_GET['order_id']);
$q->execute();
$order = $q->fetch();
if (!$order) {
  header('Location: /orders');
  exit();
}

$q = $db->prepare('SELECT * FROM orders_items WHERE orders_items_order_fk = :order_id');
$q->bindValue(':order_id', $_GET['order_id']);
$q->execute();
$order_items_order_fk = $q->fetch();

?>

<main class="w-full px-4">
  <div class="bg-gray-900 text-gray-50 h-screen w-1/4 fixed top-0 left-0 pt-36" id="left-nav"></div>

  <div class="w-3/4 h-screen absolute top-0 right-0 p-8" id="display-info">
    <h1 class="font-spartan text-4xl py-20">Order</h1>
    <ul>
      <li>ID: <?= $_GET['order_id'] ?></li>
      <li>Created by: <?= $order['order_created_by'] ?></li>
      <li>Items: <?= $order_items_order_fk['orders_items_order_fk'] ?></li>
    </ul>
    <button class="bg-red-700 text-gray-50 rounded-3xl py-2 px-4 my-4 m-auto block font-spartan" onclick="go_back()">< Go back</button>

  </div>

</main>

<?php require_once __DIR__ . '/_footer.php'  ?>