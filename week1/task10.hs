main :: IO()
main = do

    print $ snail 3 2 1 == 2
    print $ snail 10 3 1 == 5
    print $ snail 10 3 2 == 8
    print $ snail 100 20 5 == 7
    print $ snail 5 10 3 == 1
    print $ snail 8 5 4 == 4 -- my test

snail :: Int -> Int -> Int -> Int
snail heightNeeded dayDistance nightDistance = helper dayDistance 1
 where 
    helper :: Int -> Int -> Int 
    helper height result
     | height >= heightNeeded = result
     | otherwise = helper (height - nightDistance + dayDistance) (result + 1)
