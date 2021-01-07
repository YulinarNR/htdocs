<?php
/* Firts method to associate create array. */ 
$selaris = array(
    "mohammad" => 2000,
    "qadir" => 1000,
    "zara" => 500
);
echo "Salary of muhammad is ".$selaris['mohammad']."<br/>";
echo "Salary of qadir is ".$selaris['qadir']."<br/>";
echo "Salary of zara is ".$selaris['zara']."<br/>";
/*Second method to create array. */
$selaris['mohammad'] = "high";
$selaris['qadir'] = "medium";
$selaris['zara'] = "low";
echo "Salary of muhammad is ".$selaris['mohammad']."<br/>";
echo "Salary of qadir is ".$selaris['qadir']."<br/>";
echo "Salary of zara is ".$selaris['zara']."<br/>";
?>