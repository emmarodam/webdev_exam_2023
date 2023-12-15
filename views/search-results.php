<?php
require_once __DIR__.'/_header.php';
require_once __DIR__.'/../_.php';

$db = _db();
$q = $db->prepare(' SELECT * FROM users 
                    WHERE user_id = :word');
                    
$q->bindValue(':word', $_GET['query']);
$q->execute();
$users = $q->fetchAll();

?>

<main class="w-full px-4 md:px-12 lg:px-44">

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
    
    <div class="w-3/4 h-screen absolute top-0 right-0" id="display-info">
        <h1 class="font-spartan text-4xl pt-20 mx-20">Search results</h1>
        
        <?php foreach($users as $user): ?>
            <div class="flex p-20">
            <div class="hidden"><?= $user['user_id'] ?></div>
            <div class="w-1/5">
                <p class="font-bold">Name:</p><?php out($user['user_name']) ?>
            </div>
            <div class="w-1/5">
                <p class="font-bold">Last name:</p><?php out($user['user_last_name']) ?>
            </div>
            <div class="w-1/5">
                <p class="font-bold">Email:</p><?php out($user['user_email']) ?>
            </div>
            <div class="w-1/5">
                <p class="font-bold">Role:</p><?php out($user['user_role_name']) ?>
            </div>
            </div>
        <?php endforeach ?>
    </div>

  </main>

  <?php require_once __DIR__ . '/_footer.php'  ?>