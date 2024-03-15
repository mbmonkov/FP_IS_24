main :: IO()
main = do

    print $ countOccurrences 121 1 == 2
    print $ countOccurrences 222 1 == 0
    print $ countOccurrences 100 0 == 2
    print $ countOccurrences 0 0 == 1
    print $ countOccurrences 2433 3 == 2 -- my test

countOccurrences :: Int -> Int -> Int 
countOccurrences 0 0 = 1
countOccurrences num digit = helper num digit 0
 where 
    helper 0 _ result = result
    helper num digit result
     | mod num 10 == digit = helper (div num 10) digit (result + 1)
     | otherwise = helper (div num 10) digit result
    