// Source: ChatGPT

var LOGGING: Boolean = false

fun selectionSort(arr: IntArray) {
    val n = arr.size
    for (i in 0 until n - 1) {
        var minIndex = i
        for (j in i + 1 until n) {
            if (arr[j] < arr[minIndex]) {
                minIndex = j
            }
        }
        val temp = arr[minIndex]
        arr[minIndex] = arr[i]
        arr[i] = temp
    }
}

fun main() {
    val arr = intArrayOf(10650,56341,77676,47158,34999,22009,19680,41870,31090,30668)
    selectionSort(arr)
    if (LOGGING) {
        println("Sorted array: ${arr.contentToString()}")
    } else {
        println()
    }
}
