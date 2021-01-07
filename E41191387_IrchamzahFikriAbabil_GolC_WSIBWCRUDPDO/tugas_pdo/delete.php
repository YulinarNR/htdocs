<?php
include "koneksi.php";

$query = "DELETE FROM tb_mahasiswa WHERE id='$_GET[id]'";
$data = $db->prepare($query);
$data->execute();

header("location: form.php");
?>