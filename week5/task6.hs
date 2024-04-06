main :: IO()
main = do

    print $ (pairCompose [(+1), (+2)]) 1 == 5 -- ((1 + 2) + 1) + 1
    print $ (pairCompose [(+1), (+2), (+3)]) 1 == 8
    print $ (pairCompose [(+3), (+3)]) 2 == 10 -- my test

pairCompose :: [(Int -> Int)] -> (Int -> Int) 
pairCompose [] = (\ x -> x)
pairCompose [f] = (\ x -> f x)
pairCompose (f1:f2:fn) = (\ x -> (f1. f2) x + pairCompose fn x)

