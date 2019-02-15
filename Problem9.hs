pythagorasProduct :: Int -> Int -> Int
pythagorasProduct a b 
  | isPythagoras a b c = a*b*c
  | a < 1000 && b < 1000 = (pythagorasProduct (a+1) b)
  | a == 1000 && b < 1000 = (pythagorasProduct 1 (b+1))
  | otherwise = 0
  where c = (1000-a-b)

isPythagoras :: Int -> Int -> Int -> Bool
isPythagoras a b c = (a^2 + b^2 == c^2)

main = do
  print $ pythagorasProduct 1 1