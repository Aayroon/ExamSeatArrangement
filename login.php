<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
</head>
<body>

<?php
require('connect.inc.php');
session_start();
$ip_addr = $_SERVER['REMOTE_ADDR'];
$q = "INSERT IGNORE INTO visitors VALUES('$ip_addr')";

mysqli_query($conn, $q);

// If form submitted, insert values into the database.
if (isset($_POST['username'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];


    // Use MySQLi prepared statement to prevent SQL injection
    $stmt = $conn->prepare("SELECT users_id FROM `users` WHERE username=? AND password=?");
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
    $stmt->store_result();
    $rows = $stmt->num_rows;

    if ($rows == 1) {
        $stmt->bind_result($users_id);
        $stmt->fetch();
        $_SESSION['users_id'] = $users_id;
        header("Location: roomdetail.html"); // Redirect user to core.php
        exit();
    } else {
        header("Location: wrong.html");
        exit();
        // echo "<div class='form'><h3>Username/password is incorrect.</h3><br/>Click here to <a href='login.html'>Login</a></div>";
    }

    // Close the statement
    $stmt->close();
}
?>

<!--
<div class="form">
    <h1>Log In</h1>
    <form action="" method="post" name="login">
        <input type="text" name="username" placeholder="Username" required />
        <input type="password" name="password" placeholder="Password" required />
        <input name="submit" type="submit" value="Login" />
    </form>
    <p>Not registered yet? <a href='register.php'>Register Here</a></p>
</div>
-->

</body>
</html>



