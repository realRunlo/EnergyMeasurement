#!/usr/bin/env php
<?php

// Source: ChatGPT

$LOGGING = false;

// Quicksort implementation in PHP
function quicksort($arr, $low, $high) {
    if ($low < $high) {
        $pi = partition($arr, $low, $high);
        quicksort($arr, $low, $pi-1);
        quicksort($arr, $pi+1, $high);
    }
    return $arr;
}

function partition(&$arr, $low, $high) {
    $pivot = $arr[$high];
    $i = $low - 1;
    for ($j = $low; $j <= $high-1; $j++) {
        if ($arr[$j] < $pivot) {
            $i++;
            // swap arr[i] and arr[j]
            $temp = $arr[$i];
            $arr[$i] = $arr[$j];
            $arr[$j] = $temp;
        }
    }
    // swap arr[i+1] and arr[high]
    $temp = $arr[$i+1];
    $arr[$i+1] = $arr[$high];
    $arr[$high] = $temp;
    return $i+1;
}

function main()
{
    $arr = array(10650,56341,77676,47158,34999,22009,19680,41870,31090,30668);
    $ans = quicksort($arr, 0, count($arr)-1);
    global $LOGGING;
    if ($LOGGING) {
        echo "Sorted array: \n";
        for ($i = 0; $i < count($ans); $i++) {
            echo $ans[$i] . " ";
        }
    } else {
        echo "\n";
    }
}

main();
?>