main :: IO()
main = do

    print $ p 1 == 1
    print $ p 2 == 5
    print $ p 3 == 12
    print $ p 4 == 22
    print $ p 5 == 35
    print $ p 6 == 51

p :: Int -> Int
p 1 = 1 
p n = helper 1 1 2
  where
    helper result current count
      | count > n = result
      | otherwise = helper (result + 3 * count - 2) current (count + 1)