<?php
require_once __DIR__ . '/../_.php';
require_once __DIR__ . '/_header.php';

$user_id = $_GET['user_id'];

// TODO: _validate_user_id() in the master file
$db = _db();
$q = $db->prepare('SELECT * FROM users WHERE user_id = :user_id');
//$q = $db->prepare('CALL get_user_by_id(:user_id)');
$q->bindValue(':user_id', $_GET['user_id']);
$q->execute();
$user = $q->fetch();
if (!$user) {
  header('Location: /users');
  exit();
}
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
    <h1 class="font-spartan text-4xl py-20">User</h1>
    <ul>
      <li>ID: <?= $_GET['user_id'] ?></li>
      <li>Name: <?= $user['user_name'] ?></li>
      <li>Last name: <?= $user['user_last_name'] ?></li>
      <li>Email: <?= $user['user_email'] ?></li>
      <li>Address: <?= $user['user_address'] ?></li>
      <li>Role: <?= $user['user_role_name'] ?></li>
      <li>Created at: <?= $user['user_created_at'] ?></li>
      <li>Updated at: <?= $user['user_updated_at'] ?></li>
      <li>Deleted at: <?= $user['user_deleted_at'] ?></li>
      <li>Status: <?= $user['user_is_blocked'] ?></li>
    </ul>
  </div>

</main>

<?php require_once __DIR__ . '/_footer.php'  ?>