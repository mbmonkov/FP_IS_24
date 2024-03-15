main :: IO()
main = do

    print $ countDigitsIter 12345 == 5
    print $ countDigitsIter 123 == 3
    print $ countDigitsIter 24567 == 5 -- my test

    print $ countDigitsRec 12345 == 5
    print $ countDigitsRec 123 == 3
    print $ countDigitsRec 0 == 1 -- my test

countDigitsIter :: Int -> Int
countDigitsIter num = helper num 0
 where
    helper :: Int -> Int -> Int
    helper 0 count = count
    helper num count = helper (div num 10) (count + 1)

countDigitsRec :: Int -> Int
countDigitsRec num
 | num < 10 = 1
 | otherwise = 1 + countDigitsRec (div num 10)