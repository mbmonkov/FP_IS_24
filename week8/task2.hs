
main :: IO()
main = do

    print $ listLeaves [(1, 2, 3), (2, 4, 5)] -- == [4, 3, 5]
    print $ listLeaves [(2, 4, 5), (1, 2, 3)] == [4, 5, 3]
    print $ listLeaves [(1, 2, 3), (3, 4, 5), (5, 6, 9)] == [2, 4, 6, 9]

type Node = (Int, Int, Int) 

listLeaves :: [Node] -> [Int] 
listLeaves nodes = filter (\ p -> notElem p tree) list
 where 
    tree = map (\ (x, _, _) -> x) nodes
    list = concatMap (\ (_, y, z) ->  [y, z]) nodes
