#!/usr/bin/env python3

# Source: https://www.geeksforgeeks.org/selection-sort/

# Python program for implementation of Selection Sort
import sys
array = [91852,10152,33191,56826,21758,39403,77225,95936,50724,14826]
  
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