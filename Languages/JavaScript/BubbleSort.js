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
    let arr = [5, 2, 6, 8, 3, 1];
    console.log("Before sorting: " + arr);
    bubbleSort(arr);
    console.log("After sorting: " + arr);
}

main();
