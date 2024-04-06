import Data.List(intersperse)

main :: IO()
main = do

    print $ (repeater "I love Haskell") 3 " " == "I love Haskell I love Haskell I love Haskell"
    print $ (repeater "Quack") 5 "!" == "Quack!Quack!Quack!Quack!Quack"
    print $ (repeater "Real Madrid") 3 "!!!" == "Real Madrid!!!Real Madrid!!!Real Madrid" -- my test

repeater :: String -> Int -> String -> String
repeater str count glue = foldr1 (\x y -> x ++ glue ++ y) (replicate count str)
