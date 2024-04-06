import Data.Char(intToDigit)

main :: IO()
main = do

    print $ getPrimesLC 1 100 == [7,17,37,47,67,71,73,79,97]
    print $ getPrimesLC 100 1 == [7,17,37,47,67,71,73,79,97]
    print $ getPrimesLC 2 50 == [7,17,37,47] -- my test

    print $ getPrimesHOF 1 100 == [7,17,37,47,67,71,73,79,97]
    print $ getPrimesHOF 100 1 == [7,17,37,47,67,71,73,79,97]
    print $ getPrimesHOF 50 2 == [7,17,37,47] -- my test

getPrimesLC :: Int -> Int -> [Int]
getPrimesLC x y = [n | n <- [min x y .. max x y], isPrime n && hasDigitSeven n]

getPrimesHOF :: Int -> Int -> [Int]
getPrimesHOF x y = filter (\n -> isPrime n && hasDigitSeven n) [min x y .. max x y]

hasDigitSeven :: Int -> Bool
hasDigitSeven = elem (intToDigit 7) . show

isPrime :: Int -> Bool
isPrime n = [1, n] == filter (\ d -> mod n d == 0) [1 .. n]