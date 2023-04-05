#!/usr/bin/env php

<?php

// Source: ChatGPT

$LOGGING = false;

// Bubble Sort implementation in PHP
function bubbleSort($arr) {
    $n = count($arr);
    for ($i = 0; $i < $n-1; $i++) {
        for ($j = 0; $j < $n-$i-1; $j++) {
            if ($arr[$j] > $arr[$j+1]) {
                // swap arr[j] and arr[j+1]
                $temp = $arr[$j];
                $arr[$j] = $arr[$j+1];
                $arr[$j+1] = $temp;
            }
        }
    }
    return $arr;
}

// Main function for Bubble Sort
function main()
{
    $arr = array(76643,68078,59334,66985,9086,13553,84696,85651,25947,55645);
    $ans = bubbleSort($arr);
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