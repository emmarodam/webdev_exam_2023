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

<main class="w-full min-h-screen bg-gray-900 pt-20">
  <form onsubmit="update_user(); return false" class="flex flex-col px-4 lg:w-1/3 mx-auto gap-4 [&_input]:h-10 [&_input]:rounded-3xl [&_input]:outline-none [&_input]:text-gray-900 [&_input]:px-4 [&_label]:text-gray-500">

    <div class="grid">
      <label for="user_name" class="flex">
        <span class="">Name</span>
      </label>
      <input id="user_name" name="user_name" type="text" data-validate="str" data-min="<?= USER_NAME_MIN ?>" data-max="<?= USER_NAME_MAX ?>" class="" value="<?= $user['user_name'] ?>">
    </div>

    <div class="grid">
      <label for="user_last_name" class="flex">
        <span class="">Last name</span>
      </label>
      <input id="user_last_name" name="user_last_name" type="text" data-validate="str" data-min="<?= USER_LAST_NAME_MIN ?>" data-max="<?= USER_LAST_NAME_MAX ?>" class="" value="<?= $user['user_last_name'] ?>">
    </div>

    <div class="grid">
      <label for="user_address" class="flex">
        <span class="">Address</span>
      </label>
      <input id="user_address" name="user_address" type="text" data-validate="str" data-min="<?= USER_LAST_NAME_MIN ?>" data-max="<?= USER_LAST_NAME_MAX ?>" class="" value="<?= $user['user_address'] ?>">
    </div>


    <div class="grid">
      <label for="user_email">
        <span class="">Email</span>
      </label>
      <input id="user_email" name="user_email" type="text" onblur="is_email_available()" onfocus='document.querySelector("#msg_email_not_available").classList.add("hidden")' data-validate="email" value="<?= $user['user_email'] ?>">
      <div id="msg_email_not_available" class="hidden text-gray-50">
        Email is not available
      </div>
    </div>

    <div class="grid" class="flex">
      <label for="user_password" class="flex">
        <span>Password</span>
      </label>
      <input id="user_password" name="user_password" type="text" data-validate="str" data-min="<?= USER_PASSWORD_MIN ?>" data-max="<?= USER_PASSWORD_MAX ?>" class="" value="">
    </div>

    <div class="grid">
      <label for="user_confirm_password" class="flex">
        <span>Confirm password</span>
      </label>
      <input id="user_confirm_password" name="user_confirm_password" type="text" data-validate="match" data-match-name="user_password" class="" value="">
    </div>
    
    <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-2/3 m-auto block font-spartan">Update</button>
    
    </form>

    <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-1/5 m-auto block font-spartan"><a href= <?=" user-profile?user_id={$user['user_id']}"?>> < Go back </a> </button>


</main>

<?php require_once __DIR__ . '/_footer.php'  ?>