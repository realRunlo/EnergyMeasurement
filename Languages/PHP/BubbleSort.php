<?php

// Source: ChatGPT

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
    // Example usage
    $arr = array(64, 34, 25, 12, 22, 11, 90);
    $sortedArr = bubbleSort($arr);
    echo "Sorted array: \n";
    for ($i = 0; $i < count($sortedArr); $i++) {
        echo $sortedArr[$i] . " ";
    }
}

main();