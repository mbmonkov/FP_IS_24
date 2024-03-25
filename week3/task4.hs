main :: IO()
main = do

    print $ sumDivisibleNumbers 50 10 5 == 290
    print $ sumDivisibleNumbers 0 10 5 == 5
    print $ sumDivisibleNumbers 0 100 5 == 990
    print $ sumDivisibleNumbers 100 0 5 == 990

sumDivisibleNumbers :: Int -> Int -> Int -> Int
sumDivisibleNumbers start finish k = helper (min start finish) (max start finish) 
 where
    helper start finish 
     | start > finish = 0
     | mod (sumDigitsLinRec start) 5 == 0 = start + helper (start + 1) finish
     | otherwise = helper (start + 1) finish

sumDigitsLinRec :: Int -> Int
sumDigitsLinRec 0 = 0
sumDigitsLinRec n = mod n 10 + (sumDigitsLinRec $ div n 10)

{-
!!!Iter
sumDivisibleNumbers :: Int -> Int -> Int -> Int
sumDivisibleNumbers start finish k = helper (min start finish) (max start finish) k  0 
 where 
    helper :: Int -> Int -> Int -> Int -> Int 
    helper start finish k result
     | start > finish = result
     | mod (sumDigitsLinRec start) 5 == 0 = helper (start + 1) finish k (result + start)
     | otherwise = helper (start + 1) finish k result
-}