# Source: ChatGPT

def bubble_sort(arr)
  n = arr.length

  # Traverse through all array elements
  (0..n-1).each do |i|
    # Last i elements are already in place
    (0..n-i-2).each do |j|
      # Traverse the array from 0 to n-i-1
      # Swap if the element found is greater than the next element
      if arr[j] > arr[j+1]
        temp = arr[j]
        arr[j] = arr[j+1]
        arr[j+1] = temp
      end
    end
  end
  arr
end

def main()
  arr = [64, 34, 25, 12, 22, 11, 90]
  puts "Array before sorting: #{arr}"
  sorted_arr = bubble_sort(arr)
  puts "Array after sorting: #{sorted_arr}"
end

main()