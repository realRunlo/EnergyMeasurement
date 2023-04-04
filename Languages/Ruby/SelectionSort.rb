# Source: ChatGPT

def selection_sort(arr)
  n = arr.length

  # Traverse through all array elements
  (0..n-1).each do |i|
    # Find the minimum element in remaining unsorted array
    min_index = i
    (i+1..n-1).each do |j|
      if arr[j] < arr[min_index]
        min_index = j
      end
    end

    # Swap the found minimum element with the first element
    temp = arr[min_index]
    arr[min_index] = arr[i]
    arr[i] = temp
  end
  arr
end

def main()
  arr = [64, 34, 25, 12, 22, 11, 90]
  puts "Array before sorting: #{arr}"
  sorted_arr = selection_sort(arr)
  puts "Array after sorting: #{sorted_arr}"
end

main()