powerSum :: Int -> Int
powerSum x = sum (map (^2) [1..x])

sumPower :: Int -> Int
sumPower x = (sum [1..x])^2

main = do
  print $ (sumPower 100) - (powerSum 100)