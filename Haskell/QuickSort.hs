-- Source: ChatGPT

--module QuickSort where

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort smaller ++ [x] ++ quicksort larger
  where
    smaller = [y | y <- xs, y <= x]
    larger = [y | y <- xs, y > x]

main :: IO ()
main = do
  let unsortedList = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
      sortedList :: [Int] -- Add this line
      sortedList = quicksort unsortedList
  putStrLn "\nQuick Sorted List:"
  print sortedList