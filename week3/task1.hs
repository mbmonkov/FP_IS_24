main :: IO()
main = do

    print $ removeFirstOccurrence 16366 5 == 16366
    print $ removeFirstOccurrence 110 1 == 10
    print $ removeFirstOccurrence 15365 5 == 1536
    print $ removeFirstOccurrence 15360 0 == 1536
    print $ removeFirstOccurrence 15300 0 == 1530
    print $ removeFirstOccurrence 15365 1 == 5365
    print $ removeFirstOccurrence 35365 3 == 3565
    print $ removeFirstOccurrence 1212 1 == 122
    print $ removeFirstOccurrence 1212 2 == 121

removeFirstOccurrence :: Int -> Int -> Int
removeFirstOccurrence number digit = helper number 0 1
  where
    helper 0 result _ = result
    helper number result pow
      | mod number 10 == digit = result + (div number 10) * pow
      | otherwise = helper (div number 10) (result + (mod number 10) * pow) (pow * 10)

