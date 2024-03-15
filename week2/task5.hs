main :: IO()
main = do

    print $ areAmicable 200 300 == False
    print $ areAmicable 220 284 == True
    print $ areAmicable 284 220 == True
    print $ areAmicable 1184 1210 == True
    print $ areAmicable 2620 2924 == True
    print $ areAmicable 6232 6368 == True
    print $ areAmicable 246 258 == True -- my test

sumDivsCount1 :: Int -> Int
sumDivsCount1 num = helper 1 0
 where 
    helper :: Int -> Int -> Int
    helper divisor result
     | divisor >= num = result
     | mod num divisor == 0 = helper (divisor + 1) (result + divisor)
     | otherwise = helper (divisor + 1) result 

areAmicable :: Int -> Int -> Bool
areAmicable num1 num2 = num1 == sumDivsCount1 num2 || num2 == sumDivsCount1 num1
