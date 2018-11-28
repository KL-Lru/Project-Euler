multipleList :: Int -> Int -> Int -> [Int]
multipleList base now limit | now < limit = now : (multipleList base (now + base) limit)
                            | otherwise = []

merge :: [Int] -> [Int] -> [Int]
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys) | x == y = x : merge xs ys
                    | x < y = x : merge xs (y:ys)
                    | y < x = y : merge (x:xs) ys

main = do
  print $ sum (merge (multipleList 3 0 1000) (multipleList 5 0 1000))