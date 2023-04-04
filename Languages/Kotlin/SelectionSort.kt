// Source: ChatGPT

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
    val arr = intArrayOf(64, 25, 12, 22, 11)
    selectionSort(arr)
    println("Sorted array: ${arr.contentToString()}")
}
