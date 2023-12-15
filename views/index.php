<?php require_once __DIR__ . '/_header.php'  ?>

<main>

    <div class="w-screen flex flex-row">
        <div class="h-screen w-2/4 bg-red-700 text-center py-64">
            <h1 class="font-spartan text-gray-50 text-8xl">user</h1>
            <button class="bg-gray-900 text-gray-50 rounded-3xl py-2 px-8 my-4"> <a href="login">Login</a></button>
            <p class="text-sm text-gray-50">Not signed up yet? <span class="font-bold"><a href="signup">Click here</a></span></p>
        </div>
        <div class="h-screen w-2/4 bg-gray-900 text-center py-64">
            <h1 class="font-spartan text-gray-50 text-8xl">partner</h1>
            <button class="bg-red-700 text-gray-50 rounded-3xl py-2 px-8 my-4"> <a href="login">Login</a></button>
            <p class="text-sm text-gray-50">Not signed up yet? <span class="font-bold"><a href="signup">Click here</a></span></p>
        </div>
    </div>

    <p class="fixed bottom-8 text-sm text-gray-50 w-screen text-center opacity-60">Admin of this page? <span class="font-bold"><a href="login">Click here</a></span></p>

</main>

<?php require_once __DIR__ . '/_footer.php'  ?>