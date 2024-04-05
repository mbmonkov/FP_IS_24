import Data.List (sort)
main :: IO()
main = do

    print $ isAscending 0 == True
    print $ isAscending 10 == False
    print $ isAscending 123 == True
    print $ isAscending 1233 == True
    print $ isAscending 12332 == False    
    print $ isAscending 321 == False -- my test


isAscending :: Int -> Bool
isAscending num = show num == (sort $ show num)
