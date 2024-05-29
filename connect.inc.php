<?php
$conn_error = 'Could not connect';
$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'seatingarrangement';

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    die($conn_error);
}

// Create 'visitors' table if not exists
$query_create_visitors_table = "CREATE TABLE IF NOT EXISTS visitors (
    ip_address VARCHAR(255) NOT NULL PRIMARY KEY
)";

$conn->query($query_create_visitors_table);
?>