notMultiple :: Int -> Int -> Bool
notMultiple a b = (mod b a) /= 0

primeList :: [Int] -> [Int]
primeList [] = []
primeList (x:xs) = x : (primeList (filter (notMultiple x) xs))

-- 1-indexed
getNElement :: [Int] -> Int -> Int
getNElement [] n = 0
getNElement (x:xs) 1 = x
getNElement (x:xs) n = getNElement xs (n-1)

main =do
  print $ getNElement (primeList [2..]) 10001