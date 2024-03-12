main :: IO()
main = do

    print $ myGcdG 5 13 == 1
    print $ myGcdG 13 1235 == 13
    print $ myGcdG 108 21 == 3 -- my test

    print $ myGcdPM 5 13 == 1
    print $ myGcdPM 13 1235 == 13
    print $ myGcdPM 603 108 == 9 -- my test

myGcdG :: Int -> Int -> Int
myGcdG x y 
 | x == 0 = y
 | y == 0 = x
 | otherwise = myGcdG y (mod x y)

myGcdPM :: Int -> Int -> Int
myGcdPM x 0 = x
myGcdPM 0 y = y
myGcdPM x y = myGcdPM y (mod x y)