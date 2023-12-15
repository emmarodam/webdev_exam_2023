<?php
require_once __DIR__ . '/_header.php';
require_once __DIR__ . '/../_.php';

$db = _db();
$q = $db->prepare('SELECT * FROM users');
$q->execute();
$users = $q->fetchAll();
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

  <div class="w-3/4 h-screen absolute top-0 right-0 px-8" id="display-info">
    <h1 class="font-spartan text-4xl pt-20">Users</h1>
    <div class="py-12">
      <?php
      $frm_search_url = 'api-search-users.php';
      include_once __DIR__.'/_form-search.php';
      ?>
    </div>

    <div class="flex w-full pt-4 font-bold">
      <div class="w-1/3">User id</div>
      <div class="w-1/6">Name</div>
      <div class="w-1/4">Last name</div>
      <div class="w-1/6">View</div>
      <div class="w-1/12">Status</div>
    </div>

    <?php foreach ($users as $user) : ?>
      <div class="flex w-full pt-4">
        <div class="w-1/3"><?= $user['user_id'] ?></div>
        <div class="w-1/6"><?= $user['user_name'] ?></div>
        <div class="w-1/4"><?= $user['user_last_name'] ?></div>

        <a href="/user?user_id=<?= $user['user_id'] ?>" class="w-1/6 px-4">
          👁️
        </a>

        <button class="w-1/12" data-user-id="<?= $user['user_id'] ?>" data-user-is-blocked="<?= $user['user_is_blocked'] ?>" onclick="toggle_blocked('<?= $user['user_id'] ?>', <?= $user['user_is_blocked'] ?>)">
          <?= $user['user_is_blocked'] == 0 ? "🟢" : "🔴" ?>
        </button>


      </div>
    <?php endforeach ?>
  </div>

</main>

<?php require_once __DIR__ . '/_footer.php'  ?>