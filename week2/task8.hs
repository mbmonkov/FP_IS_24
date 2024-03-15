main :: IO()
main = do

    print $ removeD 1 656 == 656
    print $ removeD 5 656 == 66
    print $ removeD 6 656 == 5
    print $ removeD 0 606 == 66
    print $ removeD 0 600 == 6
    print $ removeD 6 600 == 0
    print $ removeD 2 1234 == 134 
    print $ removeD 7 1307 == 130 -- my test

reverseNumber :: Int -> Int
reverseNumber num = helper num 0
 where 
    helper :: Int -> Int -> Int
    helper 0 newNumber = newNumber
    helper num newNumber = helper (div num 10) ((newNumber * 10) + (mod num 10))


removeD :: Int -> Int -> Int   
removeD d n = helper d (reverseNumber n) 0    
 where 
    helper :: Int -> Int -> Int -> Int    
    helper _ 0 newNum = newNum
    helper d num newNum
     | mod num 10 == d = helper d (div num 10) newNum
     | otherwise = helper d (div num 10) ((newNum * 10) + (mod num 10)) 