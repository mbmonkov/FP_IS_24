main :: IO()
main = do

    print $ getPalindromes 132465 == 8
    print $ getPalindromes 654546 == 8
    print $ getPalindromes 100001 == 100012
    print $ getPalindromes 21612 == 21614
    print $ getPalindromes 26362 == 26364
    print $ getPalindromes 1374 == 8 -- my test

isPalindrome :: Int -> Bool
isPalindrome n = show n == reverse (show n)

palindromeDivisors :: Int -> [Int]
palindromeDivisors n = filter (\ x -> mod n x == 0 && isPalindrome x) [2 .. n]

getPalindromes :: Int -> Int
getPalindromes n = minimum (palindromeDivisors n) + maximum (palindromeDivisors n)