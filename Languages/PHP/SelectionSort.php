#!/usr/bin/env php

<?php

// Source: ChatGPT

$LOGGING = false;

// Selection Sort implementation in PHP
function selectionsort(&$arr, $n) {
    for($i = 0; $i < $n - 1; $i++) {
        $min_idx = $i;
        for($j = $i + 1; $j < $n; $j++)
            if($arr[$j] < $arr[$min_idx])
                $min_idx = $j;
        $temp = $arr[$min_idx];
        $arr[$min_idx] = $arr[$i];
        $arr[$i] = $temp;
    }
}

function main()
{
    $arr = array(10650,56341,77676,47158,34999,22009,19680,41870,31090,30668);
    $n = count($arr);
    selectionsort($arr, $n);

    global $LOGGING;
    if ($LOGGING) {
        echo "Sorted array: \n";
        for ($i = 0; $i < count($arr); $i++) {
            echo $arr[$i] . " ";
        }
    } else {
        echo "\n";
    }
}

main();
?>