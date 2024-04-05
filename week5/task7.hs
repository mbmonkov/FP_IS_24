main :: IO()
main = do

    print $ (switchSum (\x -> x + 1) (\x -> x * 2) 1) 2 == 3
    print $ (switchSum (\x -> x + 1) (\x -> x * 2) 2) 2 == 9
    print $ (switchSum (\x -> x + 1) (\x -> x * 2) 3) 2 == 16
    print $ (switchSum (\x -> x + 1) (\x -> x * 2) 4) 2 == 30
    print $ (switchSum (\x -> x + 2) (\x -> x * 3) 6) 3 == 300 -- my test

switchSum :: (Int -> Int) -> (Int -> Int) -> Int -> Int -> Int
switchSum f g n x = sum [helper i | i <- [1..n]]
  where
    helper 1 = f x
    helper leftover
      | even leftover = g (helper (leftover - 1))
      | otherwise = f (helper (leftover - 1))
