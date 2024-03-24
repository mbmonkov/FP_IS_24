main :: IO()
main = do

    print $ sortN 1714 == 7411
    print $ sortN 123450 == 543210
    print $ sortN 123405 == 543210
    print $ sortN 123045 == 543210
    print $ sortN 120345 == 543210
    print $ sortN 102345 == 543210
    print $ sortN 8910 == 9810
    print $ sortN 321 == 321
    print $ sortN 29210 == 92210
    print $ sortN 1230 == 3210
    print $ sortN 55345 == 55543
    print $ sortN 14752  == 75421
    print $ sortN 329450 == 954320
    print $ sortN 9125 
 
countDigitsRec :: Int -> Int
countDigitsRec num
 | num < 10 = 1
 | otherwise = 1 + countDigitsRec (div num 10)

findMaxDigit :: Int -> Int
findMaxDigit num = helper num 0 
 where
    helper 0 maxDigit = maxDigit
    helper num maxDigit = helper (div num 10) (max (mod num 10) maxDigit)

removeFirstOccurrence :: Int -> Int -> Int
removeFirstOccurrence number digit = helper number 0 1
  where
    helper 0 result _ = result
    helper number result pow
      | mod number 10 == digit = result + (div number 10) * pow
      | otherwise = helper (div number 10) (result + (mod number 10) * pow) (pow * 10)
      
sortN :: Int -> Int
sortN n = helper n 0 (countDigitsRec n)
 where 
    helper :: Int -> Int -> Int -> Int
    helper 0 result countDigits = result
    helper n result countDigits
     | findMaxDigit n == 0 = helper (removeFirstOccurrence (findMaxDigit n)) (result + (findMaxDigit n) * 10^(countDigits - 1)) (countDigits - 1)
     | otherwise = helper (removeFirstOccurrence (findMaxDigit n)) (result + (findMaxDigit n) * 10^(countDigits - 1)) (countDigits - 1)

