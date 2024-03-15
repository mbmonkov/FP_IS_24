main :: IO()
main = do 

    print $ sumPrimeDivs 0 == 0
    print $ sumPrimeDivs 6 == 5 -- 2 + 3
    print $ sumPrimeDivs 18 == 5 -- 2 + 3
    print $ sumPrimeDivs 19 == 19
    print $ sumPrimeDivs 45136 == 53
    print $ sumPrimeDivs 247 == 32 -- my test


isPrime :: Int -> Bool
isPrime n = n > 1 && helper 2
 where
    helper divisor
     | divisor >= n = True
     | mod n divisor == 0 = False
     | otherwise = helper $ divisor + 1

sumPrimeDivs :: Int -> Int 
sumPrimeDivs num = helper 0 2
 where 
    helper :: Int -> Int -> Int
    helper result div
     | div > num = result
     | mod num div == 0 && isPrime div = helper (result + div) (div + 1)
     | otherwise = helper result (div + 1)