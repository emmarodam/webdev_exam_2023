<?php
require_once __DIR__ . '/../_.php';
require_once __DIR__ . '/_header.php'

// $user_id = $_GET['user_id'];

// // TODO: _validate_user_id() in the master file
// $db = _db();
// // $q = $db->prepare('SELECT * FROM users WHERE user_id = :user_id');
// $q = $db->prepare('CALL get_user_by_id(:user_id)');
// $q->bindValue(':user_id', $_GET['user_id']);
// $q->execute();
// $user = $q->fetch();
// if( ! $user ){
//   header('Location: /users');
//   exit();
// }


?>

<main class="w-full px-4 md:px-12 lg:px-44">
  <div class="bg-gray-900 text-gray-50 h-screen w-1/4 absolute top-0 left-0 pt-36" id="left-nav">
    <img src="../img/sep22.jpg" alt="profile-picture" class="rounded-full w-3/5 block m-auto h-auto">
    <li class="m-12 list-none font-spartan flex flex-col gap-6 text-xl">
      <a href="" class="hover:text-red-700 active:text-red-700">Profile</a>
      <a href="" class="hover:text-red-700 active:text-red-700">Restaurants</a>
      <a href="" class="hover:text-red-700 active:text-red-700">My orders</a>
    </li>
    <form action="logout" method="POST">
      <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-1/4 m-12">Logout</button>
    </form>  
  </div>

  <div class="py-4">
    <form onsubmit="return false" class="flex w-1/4 gap-4 absolute right-0 [&_input]:h-10 [&_input]:rounded-3xl [&_input]:outline-none [&_input]:text-gray-900 [&_input]:px-4">
      <input name="user_search" class="w-3/4 h-8 dark:bg-zinc-200  outline-none" type="text" placeholder=" Search">
      <button class="w-1/8 text-xl">🔍</button>
    </form>
  </div>

  <div class="w-3/4 h-screen absolute top-0 right-0 p-4" id="display-info">
    <h1 class="font-spartan text-4xl px-8 py-20">Profile</h1>
    <!-- ID: <?= $_GET['user_id'] ?>
        Name: <?= $user['user_name'] ?> -->
  </div>

</main>

<?php require_once __DIR__ . '/_footer.php'  ?>