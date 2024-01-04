<?php
require_once __DIR__ . '/../_.php';
require_once __DIR__ . '/_header.php';
?>

<main class="w-full min-h-screen bg-gray-900 pt-20">
  <form onsubmit="validate(signup); return false" class="flex flex-col px-4 lg:w-1/3 mx-auto gap-4 [&_input]:h-10 [&_input]:rounded-3xl [&_input]:outline-none [&_input]:text-gray-900 [&_input]:px-4 [&_label]:text-gray-500">

    <div class="grid">
      <label for="user_name" class="flex">
        <span class="">Name</span>
        <span class="ml-auto"><?= USER_NAME_MIN ?> to <?= USER_NAME_MAX ?> characters</span>
      </label>
      <input id="user_name" name="user_name" type="text" data-validate="str" data-min="<?= USER_NAME_MIN ?>" data-max="<?= USER_NAME_MAX ?>" class="">
    </div>

    <div class="grid">
      <label for="user_last_name" class="flex">
        <span class="">Last name</span>
        <span class="ml-auto"><?= USER_LAST_NAME_MIN ?> to <?= USER_LAST_NAME_MAX ?> characters</span>

      </label>
      <input id="user_last_name" name="user_last_name" type="text" data-validate="str" data-min="<?= USER_LAST_NAME_MIN ?>" data-max="<?= USER_LAST_NAME_MAX ?>" class="">
    </div>

    <div class="grid">
      <label for="user_address" class="flex">
        <span class="">Address</span>
        <span class="ml-auto"><?= USER_LAST_NAME_MIN ?> to <?= USER_LAST_NAME_MAX ?> characters</span>

      </label>
      <input id="user_address" name="user_address" type="text" data-validate="str" data-min="<?= USER_LAST_NAME_MIN ?>" data-max="<?= USER_LAST_NAME_MAX ?>" class="">
    </div>

    <div class="grid">
      <label for="user_email">
        <span class="">Email</span>
      </label>
      <input id="user_email" name="user_email" type="text" onblur="is_email_available()" onfocus='document.querySelector("#msg_email_not_available").classList.add("hidden")' data-validate="email">
      <div id="msg_email_not_available" class="hidden text-gray-50">
        Email is not available
      </div>
    </div>

    <div class="grid" class="flex">
      <label for="user_password" class="flex">
        <span>Password</span>
        <span class="ml-auto"><?= USER_PASSWORD_MIN ?> to <?= USER_PASSWORD_MAX ?> characters</span>
      </label>
      <input id="user_password" name="user_password" type="text" data-validate="str" data-min="<?= USER_PASSWORD_MIN ?>" data-max="<?= USER_PASSWORD_MAX ?>" class="">
    </div>

    <div class="grid">
      <label for="user_confirm_password" class="flex">
        <span>Confirm password</span>
        <span class="ml-auto"><?= USER_PASSWORD_MIN ?> to <?= USER_PASSWORD_MAX ?> characters</span>
      </label>
      <input id="user_confirm_password" name="user_confirm_password" type="text" data-validate="match" data-match-name="user_password" class="">
    </div>

    <div class="grid">
      <label for="partner_radio" class="flex items-center">
        <input id="partner_radio" name="user_role_name" type="radio" value="partner" class="h-5 w-5 text-red-700">
        <span class="px-4">Partner</span>
      </label>
      <label for="customer_radio" class="flex items-center">
        <input id="customer_radio" name="user_role_name" type="radio" value="customer" class="h-5 w-5 text-red-700">
        <span class="px-4">Customer</span>
      </label>
    </div>

    <button class="bg-red-700 text-gray-50 rounded-3xl py-2 px-8 my-4">Signup</button>

  </form>
</main>

<?php require_once __DIR__ . '/_footer.php'  ?>