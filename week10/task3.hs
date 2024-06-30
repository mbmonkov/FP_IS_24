main :: IO()
main = do

    print $ ordered t1 -- == True
    print $ ordered t2 -- == False

data BTree a = Nil | Node (a, a) (BTree a) (BTree a)
  deriving (Show, Eq, Ord)

t1 :: (Num a) => BTree a
t1 = Node (3, 10) (Node (5, 8) (Node (6, 7) Nil Nil) (Node (4, 9) Nil Nil)) (Node (2, 12) Nil (Node (1, 15) Nil Nil))

t2 :: (Num a) => BTree a
t2 = Node (3, 10) (Node (5, 8) (Node (6, 7) Nil Nil) (Node (7, 9) Nil Nil)) (Node (2, 12) Nil (Node (1, 15) Nil Nil))

subInterval :: (Ord a) => (a, a) -> (a, a) -> Bool
subInterval (x1, y1) (x2, y2) = x1 <= x2 && y1 >= y2

-- ordered :: (Ord a) => BTree a -> Bool
ordered t = all (\ (lhs, rhs) -> subInterval rhs lhs) $ zip nodes (tail nodes)
 where
  nodes = traverseDFS t

traverseDFS :: BTree a -> [(a, a)]
traverseDFS Nil = []
traverseDFS (Node value left right) = traverseDFS left ++ [value] ++ traverseDFS right