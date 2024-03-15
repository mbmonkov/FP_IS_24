main :: IO()
main = do

    print $ countPalindromes 5 13 == 5 -- 6 7 8 9 11
    print $ countPalindromes 13 5 == 5 -- 6 7 8 9 11
    print $ countPalindromes 21 34 == 2 -- my test

reverseNumber :: Int -> Int
reverseNumber num = helper num 0
 where 
    helper :: Int -> Int -> Int
    helper 0 result = result
    helper num result = helper (div num 10) ((result * 10) + (mod num 10)) 

countPalindromes :: Int -> Int -> Int
countPalindromes x y = helper ((min x y) + 1) (max x y) 0
 where
    helper :: Int -> Int -> Int -> Int
    helper x y count
     | x == y = count
     | x == reverseNumber x = helper (x + 1) y (count + 1)
     | otherwise = helper (x + 1) y count