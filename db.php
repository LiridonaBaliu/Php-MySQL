
<?php
$conn = mysqli_connect('localhost', 'root', '', 'clothing_store');
if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>
