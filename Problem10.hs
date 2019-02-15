notMultiple :: Int -> Int -> Bool
notMultiple a b = (mod b a) /= 0

primeList :: [Int] -> [Int]
primeList [] = []
primeList (x:xs) 
  | x^2 > 2000000 = (x:xs)
  | otherwise = x : (primeList (filter (notMultiple x) xs))

main =do
  print $ sum (primeList [2..2000000])