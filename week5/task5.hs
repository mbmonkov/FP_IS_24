main :: IO()
main = do

    print $ (applyN (\x -> 2 * x) 5) 2 == 64
    print $ (applyN (\x -> div x 10) 2) 100 == 1
    print $ (applyN (\x -> 5 * x) 4) 10 == 6250 -- my test

applyN :: (Num a) => (a -> a) -> Int -> (a -> a)
applyN f n x
  | n <= 0    = x
  | otherwise = applyN f (n-1) (f x)