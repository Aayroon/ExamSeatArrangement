<!DOCTYPE html>
<html>
<!--<style>
body{ background:#e6f7ff ;
      color:black;

}
form{
      position:fixed;
      top:200px;
      left:330px;
}
</style>-->
<head>
<meta charset="utf-8">
<title>Registration</title>

</head>
<body>
<!--<h1 align="center">EXAM SEATING ARRANGEMENT</h1>-->
<?php
echo "register.php";
require('connect.inc.php');

// If form submitted, insert values into the database.
if (isset($_POST['username'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Use MySQLi prepared statement to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO users (username, password, email) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $username, $password, $email);

    // Execute the statement
    $result = $stmt->execute();

    if ($result) {
        header("Location: success.html");
        //echo "<div class='form'><h3>You are registered successfully.</h3><br/>Click here to <a href='login.html'>Login</a></div>";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close the statement
    $stmt->close();
}

else {/*
    // HTML form code
    echo "<div class='form'>
        <h1 align='center'>Registration Form</h1>
        <form name='registration' action='' method='post'>
            USERNAME:<input type='text' name='username' placeholder='Username' required /> <br><br>
            EMAIL:<input type='email' name='email' placeholder='Email' required />   <br><br>
            PASSWORD:<input type='password' name='password' placeholder='Password' required /> <br><br>
            <input type='submit' name='submit' value='Register' />    <br><br>
        </form>
    </div>";
*/}
?>



</body>
</html>