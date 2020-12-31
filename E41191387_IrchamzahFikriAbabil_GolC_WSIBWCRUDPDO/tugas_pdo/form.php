<?php
include "koneksi.php";
?>

<form method="post" action="insert.php">
    Nama : <input type="text" name="nama"><br>
    Alamat : <textarea name="alamat"></textarea><br>
    <button type="submit">Simpan</button>

</form>

<hr>

<table border="1">
    <thead>
        <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Alamat</th>
            <th>Hapus</th>
            <th>Ubah</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        $query = "SELECT * FROM tb_mahasiswa";
        $data = $db->prepare($query);
        $data->execute();

        $no = 1;
        while($tb_mahasiswa = $data->fetch(PDO::FETCH_LAZY)){

        
        ?>
        <tr>
            <td><?php echo $no ?></td>
            <td><?php echo $tb_mahasiswa->nama ?></td>
            <td><?php echo $tb_mahasiswa->alamat ?></td>
            <td><a href="delete.php?id=<?php echo $tb_mahasiswa->id ?>">Hapus</a></td>
            <td><a href="form-ubah.php?id=<?php echo $tb_mahasiswa->id ?>">Ubah</a></td>
        </tr>

        <?php
            $no++;
        }
        ?>
    </tbody>
</table>