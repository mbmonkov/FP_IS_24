import Data.Char(intToDigit)

main :: IO()
main = do

    print $ specialSum 1 100 == 195 -- 61, 65, 69
    print $ specialSum 2 178 == 690 -- my test

specialSum :: Int -> Int -> Int
specialSum x y = sum $ filter(\ n -> elem (intToDigit 6) (show n) && mod (n - 1) 4 == 0) [x .. y]
