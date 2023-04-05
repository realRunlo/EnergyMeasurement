// Source: ChatGPT

var LOGGING: Boolean = false

fun quickSort(arr: IntArray, low: Int, high: Int) {
    if (low < high) {
        val pivotIndex = partition(arr, low, high)
        quickSort(arr, low, pivotIndex - 1)
        quickSort(arr, pivotIndex + 1, high)
    }
}

fun partition(arr: IntArray, low: Int, high: Int): Int {
    val pivot = arr[high]
    var i = low - 1
    for (j in low until high) {
        if (arr[j] < pivot) {
            i++
            swap(arr, i, j)
        }
    }
    swap(arr, i + 1, high)
    return i + 1
}

fun swap(arr: IntArray, i: Int, j: Int) {
    val temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
}

fun main() {
    val arr = intArrayOf(99587,86421,51533,37776,36,54342,82718,28306,40097,50753)
    quickSort(arr, 0, arr.size - 1)
    if (LOGGING) {
        println("Sorted array: ${arr.contentToString()}")
    } else {
        println()
    }
}