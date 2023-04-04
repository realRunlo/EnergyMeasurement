<?php

// Source: ChatGPT

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
    $arr = array(64, 25, 12, 22, 11);
    $n = count($arr);
    selectionsort($arr, $n);
    echo "Sorted array: \n";
    for ($i = 0; $i < $n; $i++)
        echo $arr[$i]." ";
    echo "\n";
}

main();
