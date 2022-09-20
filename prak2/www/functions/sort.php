<?php
function selectionSort($array){
    $n = count($array);
    for ($i = 0; $i < $n; $i++){
        $min = $i;
        for ($j = $i; $j < $n; $j++) {
            if ($array[$j] < $array[$min]) {
                $min =  $j;
            }
        }
        $tmp = $array[$i];
        $array[$i] = $array[$min];
        $array[$min] = $tmp;
    }
    return $array;
}
?>
