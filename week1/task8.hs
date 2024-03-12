main :: IO()
main = do

    print $ canCarry 5 15 3 == "Yes"
    print $ canCarry 1 5 4 == "Yes"
    print $ canCarry 13 25 2 == "No"
    print $ canCarry 24 104.44 21.12 == "No"
    print $ canCarry 51 34.75 19.852 == "No"
    print $ canCarry 42 95.11 0.51 == "Yes"
    print $ canCarry 4 67 16 == "Yes" -- my test

canCarry :: Double -> Double -> Double -> String
canCarry c k w
 | c < 0 || k < 0 || w < 0 = "No"
 | k >= c * w = "Yes"
 | otherwise = "No"