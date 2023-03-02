-- Source: ChatGPT

bubbleSort :: Ord a => [a] -> [a]
bubbleSort xs =
  let bubble [] = []
      bubble [x] = [x]
      bubble (x:y:rest)
        | x > y     = y : bubble (x:rest)
        | otherwise = x : bubble (y:rest)
  in foldr1 (.) (repeat bubble) xs

main :: IO ()
main = do
  let unsortedList = [3, 2, 1, 5, 4]

  let sortedList = bubbleSort unsortedList
  putStrLn "\nBubble Sorted List:"
  print sortedList