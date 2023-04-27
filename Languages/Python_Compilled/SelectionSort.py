LOGGING = False

# Source: https://www.geeksforgeeks.org/selection-sort/

# Python program for implementation of Selection Sort
import sys
array = [47853,72245,42132,77384,42235,80527,39068,37034,32424,59537]
  
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
  
if LOGGING:
    print('Sorted array:', array)