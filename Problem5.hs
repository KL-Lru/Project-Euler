factorization :: Int -> Int -> Int -> Int -> [Int]
factorization x p cnt limit | p > limit = []
                            | (mod x p) == 0 = (factorization (div x p) p (cnt + 1) limit)
                            | otherwise = cnt : (factorization x (p + 1) 0 limit)

merge :: [Int] -> [Int] -> [Int]
merge x [] = x
merge [] y = y
merge (x:xs) (y:ys) | x == y = x : merge xs ys
                    | x < y = y : merge xs ys
                    | y < x = x : merge xs ys
      
fullFactorization :: Int -> Int -> [Int] -> [Int]
fullFactorization x limit [] = fullFactorization x limit (factorization 1 2 0 limit)
fullFactorization x limit factlist | x == limit =  (merge (factorization x 2 0 limit) factlist)
                                   | otherwise = (merge (factorization x 2 0 limit) (fullFactorization (x+1) limit factlist) )

powerProduct :: Int -> [Int] -> Int
powerProduct _ [] = 1
powerProduct now (x:xs) = (now ^ x) * powerProduct (now + 1) xs

main = do
  print $ powerProduct 2 (fullFactorization 1 20 [])