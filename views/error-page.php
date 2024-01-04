<?php
require_once __DIR__.'/_header.php';
require_once __DIR__.'/../_.php';

?>

<main class="bg-gray-900 h-screen text-center">

<div class="h-screen pt-56">
    <h1 class="font-spartan text-gray-50 text-6xl p-8">Sorry...</h1>
    <p class="text-gray-50">You don't have permission to reach this site. Please return to the login page.</p>
    <form action="logout" method="POST">
      <button class="bg-red-700 text-gray-50 rounded-3xl py-2 my-4 w-1/4 m-12 font-spartan">Return</button>
    </form></div>


</main>



<?php require_once __DIR__ . '/_footer.php'  ?>