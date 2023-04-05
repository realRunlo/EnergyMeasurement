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
    val arr = intArrayOf(99587,86421,51533,37776,36,54342,82718,28306,40097,50753)
    bubbleSort(arr)
    if (LOGGING) {
        println("Sorted array: ${arr.contentToString()}")
    } else {
        println()
    }
}