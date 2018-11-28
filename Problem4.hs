isPalindrome :: Int -> Bool
isPalindrome x = x == reverseInt x 0

reverseInt :: Int -> Int -> Int
reverseInt 0 ans = ans
reverseInt x y = reverseInt (div x 10) ((y * 10) + (mod x 10))

productList :: Int -> Int -> Int -> Int -> [Int]
productList x y lowlimit uplimit | x == uplimit && y == uplimit = x * y : []
                                 | x < uplimit && y == uplimit = (x * y) : (productList (x + 1) lowlimit lowlimit uplimit)
                                 | otherwise = (x * y) : (productList x (y + 1) lowlimit uplimit)

parindromeList :: [Int] -> [Int]
parindromeList [] = []
parindromeList (x:xs) | isPalindrome(x) = x : parindromeList xs
                      | otherwise = parindromeList xs
        
main = do
  print $ (maximum (parindromeList (productList 100 100 100 999)))