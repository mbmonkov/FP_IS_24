main :: IO()
main = do

    print $ minDepthGreenNode colorTree == 2
    print $ minDepthGreenNode colorTree2 == 2 -- my test
    
data Color = Red | Green | Blue
 deriving (Show, Eq)
data Tree = Empty | Node Color Tree Tree

colorTree :: Tree
colorTree = Node Blue (Node Red (Node Green Empty Empty) Empty) (Node Red (Node Blue (Node Green Empty Empty) (Node Red Empty Empty)) Empty)

colorTree2 :: Tree -- my test
colorTree2 = Node Red (Node Blue (Node Red Empty Empty) (Node Green Empty Empty)) (Node Blue (Node Red Empty Empty) (Node Green (Node Blue Empty Empty) Empty))

minDepthGreenNode :: Tree -> Int
minDepthGreenNode Empty = 0
minDepthGreenNode tree = helper 0
 where 
    helper :: Int -> Int
    helper d
     | elem Green (getLevel tree d) = d
     | otherwise = helper (d + 1)

getLevel :: Tree -> Int -> [Color]
getLevel Empty _ = []
getLevel (Node value _ _) 0 = [value]
getLevel (Node _ left right) i = (getLevel left (i - 1)) ++ (getLevel right (i - 1))