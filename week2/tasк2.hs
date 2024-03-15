main :: IO()
main = do

    print $ sumDigitsIter 12345 == 15
    print $ sumDigitsIter 123 == 6
    print $ sumDigitsIter 2487 == 21 -- my test

sumDigitsIter :: Int -> Int
sumDigitsIter num = helper num 0
 where 
    helper :: Int -> Int -> Int
    helper 0 count = count
    helper num count = helper (div num 10) (count + mod num 10)