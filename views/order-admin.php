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

<main class="w-full px-4 md:px-12 lg:px-44">
  <div class="bg-gray-900 text-gray-50 h-screen w-1/4 fixed top-0 left-0 pt-36" id="left-nav">
    <li class="m-12 mt-16 list-none font-spartan flex flex-col gap-6 text-xl">
      <p class="text-2xl">admin</p>
      <a href="users" class="hover:text-red-700 active:text-red-700"> > users</a>
      <a href="orders" class="hover:text-red-700 active:text-red-700"> > orders</a>
    </li>
    <form action="logout" method="POST">
      <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-1/4 m-12 font-spartan absolute bottom-0">Logout</button>
    </form>
  </div>

  <div class="w-3/4 h-screen absolute top-0 right-0 p-8" id="display-info">
    <h1 class="font-spartan text-4xl py-20">Order</h1>
    <ul>
      <li>ID: <?= $_GET['order_id'] ?></li>
      <li>Created by: <?= $order['order_created_by'] ?></li>
      <li>Items: <?= $order_items_order_fk['orders_items_order_fk'] ?></li>
    </ul>
  </div>

</main>

<?php require_once __DIR__ . '/_footer.php'  ?>