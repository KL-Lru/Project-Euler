fullDivision :: Int -> Int -> Int
fullDivision 1 maxdivisor = maxdivisor
fullDivision diviend divisor | (mod diviend divisor) == 0 = fullDivision (div diviend divisor) divisor
                              | otherwise = fullDivision diviend (divisor + 1)

main = do
  print (fullDivision 600851475143 2)