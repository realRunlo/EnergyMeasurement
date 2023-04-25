// Source: ChatGPT

var LOGGING: Boolean = false

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

fun main() {
    val arr = intArrayOf(10650,56341,77676,47158,34999,22009,19680,41870,31090,30668)
    bubbleSort(arr)
    if (LOGGING) {
        println("Sorted array: ${arr.contentToString()}")
    } else {
        println()
    }
}