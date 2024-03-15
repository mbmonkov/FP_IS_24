main :: IO()
main = do

    print $ rev 1 == 1
    print $ rev 123 == 321
    print $ rev 987654321 == 123456789
    print $ rev 176 == 671 -- my test

rev :: Int -> Int
rev num 
 | num < 0 = error "parameter n should be non-negative"
 | otherwise = helper num 0
 where
    helper :: Int -> Int -> Int
    helper 0 result = result
    helper leftover result = helper (div leftover 10) (result * 10 + mod leftover 10)
