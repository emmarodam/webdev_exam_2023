<?php
require_once __DIR__.'/_header.php';
require_once __DIR__.'/../_.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        session_start();
        $user = login();
        $_SESSION['user'] = $user;
        if ($user['user_role_name'] === 'admin') {
            header('Location: /users');
            exit();
        }
        header("Location: /user-profile?user_id={$user['user_id']}");
    } catch (Exception $e) {
        echo 'Login failed: ' . $e->getMessage();
    }
}

function login() {
    require_once __DIR__.'/../_.php';
    _validate_user_email();
    _validate_user_password();

    $db = _db();
    $q = $db->prepare('SELECT * FROM users WHERE user_email = :user_email');
    $q->bindValue(':user_email', $_POST['user_email']);
    $q->execute();
    $user = $q->fetch();

    if (!$user || !password_verify($_POST['user_password'], $user['user_password'])) {
        throw new Exception('Invalid credentials');
    }

    unset($user['user_password']);
    return $user;
}
?>

<main class="bg-gray-900 h-screen text-center">
        <form method="POST" class="flex flex-col px-4 lg:w-1/3 mx-auto gap-4 [&_input]:h-10 [&_input]:rounded-3xl [&_input]:outline-none [&_input]:text-gray-900 [&_input]:px-4">
            <div class="grid my-56">
                <h1 class="font-spartan text-gray-50 text-6xl p-8">Login</h1>

                <input name="user_email" type="text" data-validate="email" placeholder=" email" class="my-4">
                <input name="user_password" type="text" data-validate="str" placeholder=" password" class="my-4">

                <button class="bg-red-700 text-gray-50 rounded-3xl py-2 px-8 my-4 justify-self-center w-1/4">Login</button>
            </div>
        </form>

</main>



<?php require_once __DIR__ . '/_footer.php'  ?>