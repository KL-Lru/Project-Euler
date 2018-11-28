fibonacci :: Int -> Int -> Int -> [Int]
fibonacci x y limit | x <= limit = x : fibonacci y (x + y) limit
                    | otherwise = []

evenList :: [Int] -> [Int]
evenList [] = []
evenList (x:xs) | even x = x : (evenList xs)
                | otherwise = evenList xs

main = do
  print $ sum (evenList (fibonacci 1 2 4000000))