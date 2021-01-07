<?php
session_start();
include 'koneksi.php';
$email = $_POST['email'];
$password = $_POST['password'];

$sql = mysqli_query($koneksi, "SELECT * FROM login WHERE email='$email' AND password='$password'");
$data = mysqli_num_rows($sql);

if ($data !== 0) {
	$_SESSION['email'] = $email;
	$_SESSION['status'] = "login";
	header("location:index.php?pesan=berhasil");
} else {
	header("location:login.php?pesan=gagal");
}

?>
