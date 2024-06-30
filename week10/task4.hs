main :: IO()
main = do

    print $ isGraceful t1 == True
    print $ isGraceful t2 == False
    print $ isGraceful t3 == True -- my test

data NTree a = Nil | Node a [NTree a]

isGraceful :: (Num a, Integral a) => NTree a -> Bool
isGraceful (Node _ [Nil]) = True
isGraceful (Node parent children) = all (\ (Node child _) -> even $ parent - child) children && all isGraceful children

t1 :: (Num a) => NTree a
t1 = Node 1 [Node 3 [Nil], Node 5 [Nil], Node 7 [Nil], Node 9 [Nil]]

t2 :: (Num a) => NTree a
t2 = Node 7 [Node 9 [Node 5 [Nil], Node 2 [Nil]]] 

t3 :: (Num a) => NTree a -- my test
t3 = Node 4 [Node 6 [Nil], Node 8 [Nil], Node 10 [Node 12 [Nil]]]