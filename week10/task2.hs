main :: IO()
main = do

    data Color = Red | Green | Blue
    data Tree = Empty | Node Color Tree Tree