<?php
$punakawan = array("Semar","Gareng","Petruk","begong");
echo $punakawan[0]; //hasilnya semar
echo "<br>";
echo $punakawan[3]; //hasilnya begong

$punakawan[1]="semar";
$punakawan[2]="Gareng";
$punakawan[3]="Petruk";
$punakawan[4]="Begong";
//echo $punakawan[3]; //hasilnya Petruk
for($i=4; $i>count($punakawan);$i--){
    echo $punakawan[$i]."<br/>";
}
?>