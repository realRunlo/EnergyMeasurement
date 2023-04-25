#!/usr/bin/env node

var LOGGING = false;

function bubbleSort(arr) {
    let len = arr.length;
    for (let i = 0; i < len; i++) {
        for (let j = 0; j < len - 1 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                let temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return arr;
}

function main() {
    let arr = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
    bubbleSort(arr);
    if (LOGGING) {
        console.log("Sorted Array: " + arr);
    } else {
        console.log();
    }
}

main();
