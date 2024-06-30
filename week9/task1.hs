main :: IO()
main = do

    print $ (sumExpr (2+) [0, 1, 2, 3]) 2 == 80
    print $ (sumExpr (*0.8) [0, 1, 2, 3, 4, 5]) 10 == 4345680.0
    print $ (sumExpr (*1.6) [1, 4, 7]) 2 == 118.4 -- my test

sumExpr :: (Num a, Floating a) => (a -> a) -> [a] -> (a -> a)
sumExpr f ys = (\ x -> sum $ zipWith (\ y i -> y * f (x^i)) ys [1 .. ])