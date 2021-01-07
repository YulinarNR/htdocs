<?php
$marks = array(
 "mohammad" => array(
     "physic" => 35,
     "maths" => 30,
     "chemistry" => 39
 ),
 "qadir" => array(
    "physic" => 30,
    "maths" => 32,
    "chemistry" => 29 
 ),
 "zara" => array(
    "physic" => 33,
    "maths" => 22,
    "chemistry" => 39 
 )
 );
/*Accesing multi-demensional array values */
echo "marks for mohammad in physic : ";
echo $marks['mohammad']['physic']."<br/>";
echo "marks for qadir in maths: ";
echo $marks['qadir']['maths']."<br/>";
echo "marks for zara in chemistry : ";
echo $marks['zara']['chemistry']."<br/>";

?>