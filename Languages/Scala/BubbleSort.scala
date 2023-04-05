// Source: ChatGPT

object BubbleSort {

  var LOGGING: Boolean = false

  def sort(arr: Array[Int]): Unit = {
    val n = arr.length
    for (i <- 0 until n-1) {
      for (j <- 0 until n-i-1) {
        if (arr(j) > arr(j+1)) {
          val temp = arr(j)
          arr(j) = arr(j+1)
          arr(j+1) = temp
        }
      }
    }
  }

  def main(args: Array[String]): Unit = {
    val arr = Array(50978,60639,69959,12278,68727,48389,84494,74259,73024,41370)
    sort(arr)
    if (BubbleSort.LOGGING) {
      println("Sorted array:")
      for (i <- arr.indices) {
        print(arr(i) + " ")
      }
    }
  }
}