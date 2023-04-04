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
    const arr = [4, 2, 1, 3, 5];
    console.log(`Original array: ${arr}`);

    const sortedArr = quickSort(arr);
    console.log(`Sorted array: ${sortedArr}`);
}

main();
