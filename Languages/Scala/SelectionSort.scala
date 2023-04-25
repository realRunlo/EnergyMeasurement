// Source: ChatGPT

object SelectionSort {

  var LOGGING: Boolean = false

  def sort(arr: Array[Int]): Unit = {
    val n = arr.length
    for (i <- 0 until n-1) {
      var minIndex = i
      for (j <- i+1 until n) {
        if (arr(j) < arr(minIndex)) {
          minIndex = j
        }
      }
      val temp = arr(i)
      arr(i) = arr(minIndex)
      arr(minIndex) = temp
    }
  }

  def main(args: Array[String]): Unit = {
    val arr = Array(10650,56341,77676,47158,34999,22009,19680,41870,31090,30668)
    sort(arr)
    if (SelectionSort.LOGGING) {
      println("Sorted array:")
      for (i <- arr.indices) {
        print(arr(i) + " ")
      }
    }
  }
}
