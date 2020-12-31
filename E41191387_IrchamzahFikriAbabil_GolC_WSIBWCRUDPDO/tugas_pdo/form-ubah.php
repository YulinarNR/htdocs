<?php
include "koneksi.php";

$query = "SELECT * FROM tb_mahasiswa WHERE id='$_GET[id]'";
$data = $db->prepare($query);
$data->execute();

$tb_mahasiswa = $data->fetch(PDO::FETCH_LAZY);
?>

<h3>Form Ubah</h3>
<form method="post" action="update.php">
    <input type="hidden" name="id" value="<?php echo $tb_mahasiswa->id ?>">
    Nama : <input type="text" name="nama" value="<?php echo $tb_mahasiswa->nama ?>"><br>
    Alamat : <textarea name="alamat"><?php echo $tb_mahasiswa->alamat ?></textarea><br>
    <button type="submit">Simpan</button>

</form>