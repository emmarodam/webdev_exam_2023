<?php
require_once __DIR__.'/_header.php';
require_once __DIR__.'/../_.php';

$db = _db();
$q = $db->prepare('SELECT * FROM orders WHERE order_id = :word');
$q->bindValue(':word', $_GET['query']);
$q->execute();
$orders = $q->fetchAll();
?>

<main class="w-full px-4 md:px-12 lg:px-44">

  <main class="w-full px-4 md:px-12 lg:px-44">
    <div class="bg-gray-900 text-gray-50 h-screen w-1/4 fixed top-0 left-0 pt-36" id="left-nav">

      <form action="logout" method="POST">
        <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-1/4 m-12 font-spartan absolute bottom-0">Logout</button>
      </form>
    </div>
    
    <div class="w-3/4 h-screen absolute top-0 right-0" id="display-info">
        <h1 class="font-spartan text-4xl pt-20 mx-20">Search results</h1>
        
        <?php foreach($orders as $order): ?>
            <div class="flex p-20">
              <div class="w-1/3">
                <p class="font-bold">Order id:</p><?= $order['order_id'] ?>
              </div>
              <div class="w-1/3">
                  <p class="font-bold">Created by:</p><?php out($order['order_created_by']) ?>
              </div>
              <div class="w-1/6">
                  <p class="font-bold">Created at:</p><?php out($order['order_created_at']) ?>
              </div>
              <div class="w-1/6">
                  <p class="font-bold">Delivered at:</p><?php out($order['order_delivered_at']) ?>
              </div>
            </div>
        <?php endforeach ?>

        <button class="bg-red-700 text-gray-50 rounded-3xl py-2 px-4 my-4 m-auto block font-spartan" onclick="go_back()">< Go back</button>
    </div>

  </main>

  <?php require_once __DIR__ . '/_footer.php'  ?>