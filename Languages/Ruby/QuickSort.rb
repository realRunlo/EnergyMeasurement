#!/usr/bin/env ruby

# Source: ChatGPT

$LOGGING = false

def quicksort(arr)
  # Base case: an array of length 0 or 1 is already sorted
  return arr if arr.length <= 1

  # Choose a pivot element
  pivot = arr[0]

  # Divide the array into two sub-arrays of elements less than and greater than the pivot
  less = []
  greater = []
  arr[1..-1].each do |x|
    if x < pivot
      less << x
    else
      greater << x
    end
  end

  # Recursively sort the two sub-arrays and concatenate them with the pivot in between
  return quicksort(less) + [pivot] + quicksort(greater)
end

def main()
  arr = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
  ans = quicksort(arr)
  if $LOGGING
    puts "Sorted array: #{ans}"
  else
    puts ""
  end
end

main()