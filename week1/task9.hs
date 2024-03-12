main :: IO()
main = do

    print $ growingPlant 5 2 5 == 1
    print $ growingPlant 5 2 6 == 2
    print $ growingPlant 10 9 4 == 1
    print $ growingPlant 100 10 910 == 10 -- upSpeed=100, downSpeed=10, desiredHeight=910
    print $ growingPlant 10 2 13 == 2 -- my test

growingPlant :: Int -> Int -> Int -> Int
growingPlant upSpeed downSpeed desiredHeight = helper upSpeed 1
 where
    helper :: Int -> Int -> Int
    helper height result
     | height >= desiredHeight = result
     | otherwise = helper (height - downSpeed + upSpeed) (result + 1)
  
