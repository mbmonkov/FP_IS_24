main :: IO()
main = do

    print $ levelSum numberBTree 1 == 11 -- (5 + 6)
    print $ cone numberBTree == True