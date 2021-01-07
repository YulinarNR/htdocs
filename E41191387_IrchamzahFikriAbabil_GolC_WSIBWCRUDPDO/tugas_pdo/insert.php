<?php
include "koneksi.php";

$query = "INSERT INTO tb_mahasiswa VALUES ('', '$_POST[nama]', '$_POST[alamat]')";
$data = $db->prepare($query);
$data->execute();

header("location: form.php");
?>