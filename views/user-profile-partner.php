<?php
require_once __DIR__ . '/../_.php';
require_once __DIR__ . '/_header.php';

$user_id = $_GET['user_id'];

// TODO: _validate_user_id() in the master file
$db = _db();
$q = $db->prepare('SELECT * FROM users WHERE user_id = :user_id');
$q->bindValue(':user_id', $_GET['user_id']);
$q->execute();
$user = $q->fetch();
?>

<main class="w-full px-4 md:px-12 lg:px-44 inline-block">
  <div class="bg-gray-900 text-gray-50 h-screen w-1/4 fixed top-0 left-0 pt-36" id="left-nav">
    <li class="m-12 mt-16 list-none font-spartan flex flex-col gap-6 text-xl">
      <p class="text-2xl"><?= $user['user_role_name'] ?></p>
      <a href="#profile" class="hover:text-red-700"> > profile</a>
      <a href="#orders" class="hover:text-red-700"> > orders</a>
    </li>
    <form action="logout" method="POST">
      <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-1/4 m-12 font-spartan absolute bottom-0">Logout</button>
    </form>
  </div>


  <div class="w-3/4 h-screen p-4 ml-48" id="profile">
    <h1 class="font-spartan text-4xl px-8 py-20 text-red-700">Welcome <?= $user['user_name'] ?> 👋 </h1>
    <h2 class="font-spartan text-3xl pt-4 px-8">Profile information</h2>
    <ul class="px-8">
      <li>
        <h3 class="font-spartan text-xl pt-4">Name</h3>
      </li>
      <li>
        <p><?= $user['user_name'] ?></p>
      </li>
      <li>
        <h3 class="font-spartan text-xl pt-4">Last name</h3>
      </li>
      <li>
        <p><?= $user['user_last_name'] ?></p>
      </li>
      <li>
        <h3 class="font-spartan text-xl pt-4">Address:</h3>
      </li>
      <li>
        <p><?= $user['user_address'] ?></p>
      </li>
      <li>
        <h3 class="font-spartan text-xl pt-4">Email</h3>
      </li>
      <li>
        <p><?= $user['user_email'] ?></p>
      </li>
      <li>
        <h3 class="font-spartan text-xl pt-4">Password</h3>
      </li>
      <li>
        <p><?= $user['user_password'] ?></p>
      </li>
    </ul>

    <div class="py-8 flex flex-row w-full">
      <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-1/4 m-12 font-spartan">
        <a href="/update-user?user_id=<?= $user['user_id'] ?>">Update</a>
      </button>
      <form onsubmit="delete_user(); return false" class="w-1/4">
        <input class="hidden" name="user_id" type="text" value="<?= $user['user_id'] ?>">
        <button class="bg-gray-900 text-gray-50 rounded-3xl py-2 my-4 m-8 w-full font-spartan">Delete</button>
      </form>
    </div>

  </div>

  <?php
  $db = _db();
  $q = $db->prepare('SELECT * FROM orders WHERE order_delivered_by = :user_id');
  $q->bindValue(':user_id', $_GET['user_id']);
  $q->execute();
  $orders = $q->fetchAll();
  ?>

  <div class="w-3/4 h-screen p-4 ml-48" id="orders">
    <h2 class="font-spartan text-3xl pt-4 px-8">Orders</h2>
    <div class="p-8">
      <?php
      $frm_search_url = 'api-search-orders.php';
      include_once __DIR__ . '/_form-search-orders.php';
      ?>
    </div>

    <h3 class="font-spartan text-2xl pt-4 px-8">Pending</h3>
    <p class="pt-4 px-8">These orders are not delivered yet 🛵</p>
    <div class="flex w-full pt-8 font-bold px-8">
      <div class="w-2/3">Order id</div>
      <div class="w-2/3">Created at</div>
      <div class="w-2/3">Delivered at</div>
      <div class="w-1/3">View</div>
    </div>

    <?php foreach ($orders as $order) : ?>
      <?php if ($order['order_delivered_at'] === 0) : ?>

        <div class="flex w-full pt-4 px-8">
          <div class="w-2/3"><?= $order['order_id'] ?></div>
          <div class="w-2/3"><?= $order['order_created_at'] ?></div>
          <div class="w-2/3"><?= $order['order_delivered_at'] ?></div>

          <a href="/order?order_id=<?= $order['order_id'] ?>" class="w-1/3">
            👁️
          </a>

        </div>
      <?php endif; ?>
    <?php endforeach; ?>

    <h3 class="font-spartan text-2xl pt-8 px-8">Delivered</h3>
    <p class="pt-4 px-8">These orders are already delivered. Well done! 💪🏻</p>
    <div class="flex w-full pt-8 font-bold px-8">
      <div class="w-2/3">Order id</div>
      <div class="w-2/3">Created at</div>
      <div class="w-2/3">Delivered at</div>
      <div class="w-1/3">View</div>
    </div>

    <?php foreach ($orders as $order) : ?>
      <?php if ($order['order_delivered_at'] > 0) : ?>
        <div class="flex w-full pt-4 px-8">
          <div class="w-2/3"><?= $order['order_id'] ?></div>
          <div class="w-2/3"><?= $order['order_created_at'] ?></div>
          <div class="w-2/3"><?= $order['order_delivered_at'] ?></div>

          <a href="/order?order_id=<?= $order['order_id'] ?>" class="w-1/3">
            👁️
          </a>

        </div>
      <?php endif; ?>
    <?php endforeach; ?>


  </div>

</main>

<?php require_once __DIR__ . '/_footer.php'  ?>