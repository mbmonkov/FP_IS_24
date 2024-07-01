main :: IO()
main = do

    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10)] == (4.47213595499958,ThreeD 4.0 5.0 6.0,ThreeD 2.0 5.0 10.0)
    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2)] == (4.47213595499958,ThreeD 4.0 5.0 6.0,ThreeD 2.0 5.0 10.0)
    print $ getClosestDistance [(ThreeD 4 5 6), (ThreeD 2 5 10), (ThreeD 5 2 (-10)), (ThreeD (-2) 1 45), (ThreeD 12 0 2), (ThreeD 6 5 4)] == (2.8284271247461903,ThreeD 4.0 5.0 6.0,ThreeD 6.0 5.0 4.0)

    print $ getClosestDistance [(TwoD 4 6), (TwoD 5 10), (TwoD 5 29), (TwoD 1 45), (TwoD 0 2), (TwoD 69 42)] == (4.123105625617661,TwoD 4.0 6.0,TwoD 5.0 10.0)
    print $ getClosestDistance [(ThreeD 2 4 6), (ThreeD 6 7 8)] == (5.385164807134504,ThreeD 2.0 4.0 6.0,ThreeD 6.0 7.0 8.0) -- my test

data Point a = TwoD a a | ThreeD a a a
 deriving (Show, Eq)

getDistance :: (Num a, Floating a) => Point a -> Point a -> (a, Point a, Point a)
getDistance (ThreeD x1 y1 z1) (ThreeD x2 y2 z2) = ((sqrt $ (x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2), (ThreeD x1 y1 z1), (ThreeD x2 y2 z2))
getDistance (TwoD x1 y1) (TwoD x2 y2) = ((sqrt $ (x2 - x1)^2 + (y2 - y1)^2), (TwoD x1 y1), (TwoD x2 y2))
getDistance _ _ = error "Is not valid!!!"

getClosestDistance :: (Num a, Floating a, Ord a) => [Point a] -> (a, Point a, Point a)
getClosestDistance xs = foldl1 (\ acc@(minDis, _, _) (dis, p1, p2) -> if minDis > dis then (dis, p1, p2) else acc) distances
 where
    distances = filter (\ (dis, _, _) -> dis > 0) $ concatMap (\ p1 -> map (\ p2 -> getDistance p1 p2) xs) xs


