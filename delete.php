<?php
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "library";
 $conn = new mysqli($servername, $username, $password, $dbname);
 $id = $_POST['id'];
 $sql = "DELETE from biblioteka WHERE id='$id'";
 mysqli_query($conn, $sql);
 header('Location: http://127.0.0.1/php/index.php');
?>