import Data.List
main :: IO()
main = do

    print $ nodes [(1, 2), (1, 3), (2, 3), (2, 4)] == [1, 2, 3, 4]

    print $ neighbors 2 [(1, 2), (1, 3), (2, 3), (2, 4)] == [3, 4]
    print $ neighbors 4 [(1, 2), (1, 3), (2, 3), (2, 4)] == []

   print $ adjacencyList [(1, 2), (1, 3), (2, 3), (2, 4)] == [(1, [2, 3]), (2, [3, 4]), (3, []), (4, [])]

type Node = Int
type Nodes = [Node]
type Edge = (Node, Node)
type Graph = [Edge]

nodes :: Graph -> Nodes
nodes = nub . concatMap (\ (x, y) -> [x, y])

neighbors :: Node -> Graph -> Nodes
-- neighbors node graph = map snd $ filter (\ (father, child) -> father == node) graph
neighbors node graph = [child | (parent, child) <- graph, parent == node]

adjacencyList :: Graph -> [(Node, Nodes)]
adjacencyList graph = [(node, neighbors node graph) | node <- nodes graph, not $ null $ neighbors node graph]