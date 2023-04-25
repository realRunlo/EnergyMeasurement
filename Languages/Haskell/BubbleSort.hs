-- Source: ChatGPT
logging = False

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
  let unsortedList = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]
      sortedList = bubbleSort unsortedList
  if (logging)
    then putStrLn ("Bubble Sorted list: " ++ show sortedList)
    else print (length(sortedList))
