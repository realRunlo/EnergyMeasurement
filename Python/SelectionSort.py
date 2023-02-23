# Source: https://www.geeksforgeeks.org/selection-sort/

# Python program for implementation of Selection Sort
import sys
array = [22093,34423,17506,891,40765]
  
# Traverse through all array elements
for i in range(len(array)):
      
    # Find the minimum element in remaining 
    # unsorted array
    min_idx = i
    for j in range(i+1, len(array)):
        if array[min_idx] > array[j]:
            min_idx = j
              
    # Swap the found minimum element with 
    # the first element        
    array[i], array[min_idx] = array[min_idx], array[i]
  
# Driver code to test above
print ("Sorted array")
for i in range(len(array)):
    print("%d" %array[i],end=" ") 
print()