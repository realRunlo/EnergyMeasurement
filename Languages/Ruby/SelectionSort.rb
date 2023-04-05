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
  arr = [14454,86495,76818,12234,59725,15244,80646,4864,34847,41294]
  ans = selectionsort(arr)
  if $LOGGING
    puts "Sorted array: #{ans}"
  else
    puts ""
  end
end

main()