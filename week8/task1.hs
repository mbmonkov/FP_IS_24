import Data.List (subsequences)
main :: IO()
main = do

    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 0 1  == [[1]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 1 == [[1, 2], [1, 3]]
    print $ simplePaths [(1, [2, 3, 4]), (2, [3, 4]), (3, []), (4, [])] 1 1 == [[1,2],[1,3],[1,4]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 2 1  == [[1, 2, 3], [1, 2, 4]]
    print $ simplePaths [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])] 1 2 == [[2,3],[2,4]]
    print $ simplePaths [(1, [2, 3]), (2, [3]), (3, []), (4, [])] 1 2  == [[2,3]]

type Node = Int
type Graph = [(Node, [Node])]
type Path = [Node]

simplePaths :: Graph -> Int -> Node -> [Path]
simplePaths _ 0 n = [[n]]
simplePaths graph k n
 | notElem n (nodes graph) = error "The node is not present"
 | otherwise = filter (\p -> length p == k + 1 && head p == n) $ allPaths graph

nodes :: Graph -> [Node]
nodes = map fst

allPaths :: Graph -> [Path]
allPaths graph = filter (\p -> length p > 1 && isPath graph p) $ subsequences $ nodes graph

isPath :: Graph -> Path -> Bool
isPath graph path = all (\p -> elem p (concat [ [(x, y) | y <- ys] | (x, ys) <- graph ])) $ zip path (tail path)