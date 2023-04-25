#!/usr/bin/env node

var LOGGING = false;

function selectionSort(arr) {
    let len = arr.length;
    for (let i = 0; i < len; i++) {
        let min = i;
        for (let j = i + 1; j < len; j++) {
            if (arr[j] < arr[min]) {
                min = j;
            }
        }
        if (i !== min) {
            swap(arr, i, min);
        }
    }
    return arr;
}

function swap(arr, i, j) {
    let temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}

function main() {
    let arr = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
    selectionSort(arr);
    if (LOGGING) {
        console.log("Sorted Array: " + arr);
    } else {
        console.log();
    }
}

main();
