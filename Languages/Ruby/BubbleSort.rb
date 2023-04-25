#!/usr/bin/env ruby

# Source: ChatGPT

$LOGGING = false

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
  arr = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
  bubble_sort(arr)
  if $LOGGING
    puts "Sorted array: #{arr}"
  else
    puts ""
  end
end

main()