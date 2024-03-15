main :: IO()
main = do

    print $ findSum 0 2 10 == 3578 -- 510 + 1022 + 2046
    print $ findSum 5 3 5 == 174 -- 26 + 50 + 98
    print $ findSum 2 7 8 == 3121 -- my test

findSum :: Int -> Int -> Int -> Int
findSum a b n = findformula a b n + findformula a b (n - 1) + findformula a b (n - 2)

findformula :: Int -> Int -> Int -> Int
findformula a b 0 = a 
findformula a b n = b*(2^(n - 1)) + findformula a b (n - 1)