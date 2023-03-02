-- Source: ChatGPT

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
  let smaller = quicksort [a | a <- xs, a <= x]
      larger = quicksort [a | a <- xs, a > x]
  in smaller ++ [x] ++ larger

main :: IO ()
main = do
  let unsortedList = [3, 2, 1, 5, 4]

  let sortedList = quicksort unsortedList
  putStrLn "\nQuick Sorted List:"
  print sortedList