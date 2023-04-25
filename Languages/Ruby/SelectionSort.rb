#!/usr/bin/env ruby

# Source: ChatGPT

$LOGGING = false

def selectionsort(arr)
  n = arr.length

  # Iterate through each element in the array
  for i in 0...n
    # Find the minimum element in the unsorted part of the array
    min_idx = i
    for j in i+1...n
      if arr[j] < arr[min_idx]
        min_idx = j
      end
    end

    # Swap the minimum element with the first element in the unsorted part of the array
    arr[i], arr[min_idx] = arr[min_idx], arr[i]
  end

  # Return the sorted array
  return arr
end


def main()
  arr = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
  ans = selectionsort(arr)
  if $LOGGING
    puts "Sorted array: #{ans}"
  else
    puts ""
  end
end

main()