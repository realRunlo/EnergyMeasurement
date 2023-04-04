# Source: ChatGPT

def quick_sort(arr, low, high)
  if low < high
    # partition_index is the index of partition element
    partition_index = partition(arr, low, high)

    # Recursively sort elements before and after partition element
    quick_sort(arr, low, partition_index - 1)
    quick_sort(arr, partition_index + 1, high)
  end
  arr
end

def partition(arr, low, high)
  # Choose the rightmost element as pivot
  pivot = arr[high]

  # Index of smaller element
  i = low - 1

  (low..high-1).each do |j|
    # If current element is smaller than or equal to pivot
    if arr[j] <= pivot
      i += 1
      # Swap arr[i] and arr[j]
      arr[i], arr[j] = arr[j], arr[i]
    end
  end

  # Swap arr[i+1] and arr[high] (or pivot)
  arr[i+1], arr[high] = arr[high], arr[i+1]

  # Return partition index
  i + 1
end

def main()
  arr = [64, 34, 25, 12, 22, 11, 90]
  n = arr.length
  puts "Array before sorting: #{arr}"
  sorted_arr = quick_sort(arr, 0, n - 1)
  puts "Array after sorting: #{sorted_arr}"
end

main()