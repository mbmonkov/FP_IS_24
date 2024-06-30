main :: IO()
main = do

    print $ findUncles t 5 == [3,4]
    print $ findUncles t 7 == [2,4]
    print $ findUncles t 10 == [5]
    print $ findUncles t 9 == [2,3] -- my test
    
type Tree = [(Int, [Int])]
t :: Tree
t = [(1,[2,3,4]),(2,[5,6]),(3,[7]),(4,[8,9]),(5,[]),(6,[10]),(7,[]),(8,[]),(9,[]),(10,[])]

getBrothers :: Tree -> Int -> [Int]
getBrothers [] _ = []
getBrothers tr p
 | elem p (snd $ head tr) = snd $ head tr
 | otherwise = getBrothers (tail tr) p 

findUncles :: Tree -> Int -> [Int]
findUncles [] _ = []
findUncles tr children = helper tr
 where
    helper :: Tree -> [Int]
    helper currTr
     | elem children (snd $ head currTr) = filter (\ x -> x /= (fst $ head currTr)) (getBrothers tr (fst $ head currTr))
     | otherwise = helper (tail currTr)