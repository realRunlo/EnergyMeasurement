-- Source: ChatGPT
logging = False

--module SelectionSort where

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort xs = smallest : selectionSort (remove smallest xs)
  where
    smallest = minimum xs

remove :: Eq a => a -> [a] -> [a]
remove _ [] = []
remove y (x:xs) | x == y    = xs
                | otherwise = x : remove y xs


main :: IO ()
main = do
  let unsortedList = [10650,56341,77676,47158,34999,22009,19680,41870,31090,30668]

  let sortedList = selectionSort unsortedList
  if (logging)
    then putStrLn ("Selection Sorted list: " ++ show sortedList)
    else print (length(sortedList))