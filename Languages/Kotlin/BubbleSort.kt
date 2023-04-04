// Source: ChatGPT

fun bubbleSort(arr: IntArray) {
    val n = arr.size
    for (i in 0 until n - 1) {
        for (j in 0 until n - i - 1) {
            if (arr[j] > arr[j + 1]) {
                swap(arr, j, j + 1)
            }
        }
    }
}

fun swap(arr: IntArray, i: Int, j: Int) {
    val temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

fun printArray(arr: IntArray) {
    for (element in arr) {
        print("$element ")
    }
    println()
}

fun main() {
    val arr = intArrayOf(64, 34, 25, 12, 22, 11, 90)
    println("Original array:")
    printArray(arr)
    bubbleSort(arr)
    println("Sorted array:")
    printArray(arr)
}