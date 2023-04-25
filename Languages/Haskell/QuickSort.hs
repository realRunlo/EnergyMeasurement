-- Source: ChatGPT
logging = False

--module QuickSort where

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort smaller ++ [x] ++ quicksort larger
  where
    smaller = [y | y <- xs, y <= x]
    larger = [y | y <- xs, y > x]

main :: IO ()
main = do
  let unsortedList = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
      sortedList :: [Int] -- Add this line
      sortedList = quicksort unsortedList
  if (logging)
    then putStrLn ("QuickSort Sorted list: " ++ show sortedList)
    else print (length(sortedList))