#!/usr/bin/env node

var LOGGING = false;


function quickSort(arr, left = 0, right = arr.length - 1) {
    if (left >= right) return;

    const pivot = arr[Math.floor((left + right) / 2)];
    const index = partition(arr, left, right, pivot);

    quickSort(arr, left, index - 1);
    quickSort(arr, index, right);

    return arr;
}

function partition(arr, left, right, pivot) {
    while (left <= right) {
        while (arr[left] < pivot) left++;
        while (arr[right] > pivot) right--;

        if (left <= right) {
            [arr[left], arr[right]] = [arr[right], arr[left]];
            left++;
            right--;
        }
    }

    return left;
}

function main() {
    let arr = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
    quickSort(arr);
    if (LOGGING) {
        console.log("Sorted Array: " + arr);
    } else {
        console.log();
    }
}

main();
