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
    val arr = intArrayOf(99587,86421,51533,37776,36,54342,82718,28306,40097,50753)
    selectionSort(arr)
    if (LOGGING) {
        println("Sorted array: ${arr.contentToString()}")
    } else {
        println()
    }
}
