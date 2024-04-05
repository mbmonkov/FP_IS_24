main :: IO()
main = do

    print $ isPresentRecNonPM 0 [] == False
    print $ isPresentRecNonPM 0 [1, 2, 3] == False
    print $ isPresentRecNonPM 0 [0, -1, 2] == True
    print $ isPresentRecNonPM 3 [1, 2, 3, 4] == True -- my test

    print $ isPresentRecPM 0 [] == False
    print $ isPresentRecPM 0 [1, 2, 3] == False
    print $ isPresentRecPM 0 [0, -1, 2] == True
    print $ isPresentRecPM 5 [1, 2, 3, 4] == False -- my test

    print $ isPresentFunc 0 [] == False
    print $ isPresentFunc 0 [1, 2, 3] == False
    print $ isPresentFunc 0 [0, -1, 2] == True
    print $ isPresentFunc 4 [1, 2, 3, 4]  == True-- my test

isPresentRecNonPM :: Int -> [Int] -> Bool
isPresentRecNonPM num xs = not (null xs) && (head xs == num || isPresentRecNonPM num (tail xs))

isPresentRecPM :: Int -> [Int] -> Bool
isPresentRecPM _ [] = False
isPresentRecPM num (x:xs) = x == num || isPresentRecPM num xs

isPresentFunc :: Int -> [Int] -> Bool
isPresentFunc num = elem num