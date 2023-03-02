-- Source: ChatGPT

selectionSort :: Ord a => [a] -> [a]
selectionSort [] = []
selectionSort xs = let (min, rest) = removeMin xs
                   in min : selectionSort rest
  where removeMin [x] = (x, [])
        removeMin (x:xs) = let (y, ys) = removeMin xs
                           in if x < y then (x, xs) else (y, x:ys)

main :: IO ()
main = do
  let unsortedList = [3, 2, 1, 5, 4]

  let sortedList = selectionSort unsortedList
  putStrLn "\nSelection Sorted List:"
  print sortedList