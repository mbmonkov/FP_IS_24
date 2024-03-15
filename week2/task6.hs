main :: IO()
main = do

    print $ isInteresting 410 == True
    print $ isInteresting 212 == False
    print $ isInteresting 567 == False
    print $ isInteresting 70 == True 
    print $ isInteresting 5 == True 
    print $ isInteresting 4 == True
    print $ isInteresting 248 == False -- my test

sumDigitsCountRec :: Int -> Int
sumDigitsCountRec num
 | num < 10 = num
 | otherwise = mod num 10 + sumDigitsCountRec (div num 10)

isInteresting :: Int -> Bool
isInteresting num = mod num (sumDigitsCountRec num) == 0
