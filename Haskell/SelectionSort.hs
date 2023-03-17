-- Source: ChatGPT

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
  let unsortedList = [3, 2, 1, 5, 4]

  let sortedList = selectionSort unsortedList
  putStrLn "Length of Selection Sorted List:"
  print (length (sortedList))