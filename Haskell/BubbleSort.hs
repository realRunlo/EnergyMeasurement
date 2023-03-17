-- Source: ChatGPT

bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort xs = bubbleSort' xs (length xs)

bubbleSort' :: Ord a => [a] -> Int -> [a]
bubbleSort' xs 0 = xs
bubbleSort' xs n = bubbleSort' (bubble xs) (n-1)

bubble :: Ord a => [a] -> [a]
bubble [] = []
bubble [x] = [x]
bubble (x:y:xs) 
    | x > y     = y : bubble (x:xs)
    | otherwise = x : bubble (y:xs)


main :: IO ()
main = do
  let unsortedList = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
      sortedList = bubbleSort unsortedList
  putStrLn "Length of Bubble Sorted List:"
  print (length (sortedList))
