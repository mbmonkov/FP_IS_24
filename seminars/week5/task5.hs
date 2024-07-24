main :: IO()
main = do

    print $ divideNonPM (10, 5) == (2, 0)
    print $ divideNonPM (5, 10) == (0, 5)

    print $ dividePM (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    print $ dividePM (5, 10) == (0, 5) -- 5 / 10 = 0 and 5 % 10 = 5

divideNonPM :: Point -> Point
divideNonPM point = (div (fst point) (snd point), mod (fst point) (snd point))

dividePM :: Point -> Point
dividePM (k, l) = (div k l, mod k l)

type Point = (Int, Int)
