<?php
//firts method to create array
$numbers = array(1,2,3,4);
foreach ($numbers as $value )
{
    echo "Value is $value <br />";
}
/*second method to create array. */
$numbers[0] = "one";
$numbers[1] = "two";
$numbers[2] = "three";
$numbers[3] = "four";
$numbers[4] = "five";

foreach($numbers as $index => $value)
{
    echo "value is $index : $value <br />";
}
?>