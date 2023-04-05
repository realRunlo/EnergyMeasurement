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
    let arr = [40646,53538,59021,59727,46156,17161,20970,27293,8001,66539]
    bubbleSort(arr);
    if (LOGGING) {
        console.log("Sorted Array: " + arr);
    } else {
        console.log();
    }
}

main();
