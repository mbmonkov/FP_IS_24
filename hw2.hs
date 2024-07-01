import Data.List
main :: IO()
main = do

-- 1ва задача
    print $ warmerAfter [20,21,20,19,18,20,25,24,23,20,26] == [1,5,4,2,1,1,4,3,2,1,0]
    print $ warmerAfter [0,10,20,30] == [1,1,1,0]
    print $ warmerAfter [21,22,23]  == [1,1,0]
    print $ warmerAfter [23,24,25,21,19,23,26,23]  == [1,1,4,2,1,1,0,0]

-- 2ра задача
    print $ (setupRobots [0, 1] "LR") 3 == [-3, 4]
    print $ (setupRobots [-2, 0, 2] "RLL") 2 == [-2, 0, 0]
    print $ (setupRobots [-2, 0, 2] "RLL") 5 == [-5, -3, 3]
    print $ (setupRobots [-2,0,1,3,4,7,10,12,15] "RLLLRRLRL") 1 == [-1,-1,0,2,5,8,9,13,14]
    print $ (setupRobots [-2,0,1,3,4,7,10,12,15] "RLLLRRLRL") 3 == [-3,-2,0,1,7,7,10,12,15]
    print $ (setupRobots [-2,0,1,3,4,7,10,12,15] "RLLLRRLRL") 5 == [-5,-4,-2,3,5,9,10,12,17]

-- 1ва задача
warmerAfter :: [Double] -> [Int]
warmerAfter ts = map (\i -> helper i (i+1) ts) [0..(length ts - 1)] -- прилагаме ламбда функцията върху всеки индекс от 0 до дължината -1
  where
    helper :: Int -> Int -> [Double] -> Int
    helper index currIndex ts
      | currIndex == length ts = 0  -- ако е последен, връщаме 0
      | ts !! currIndex > ts !! index = currIndex - index  -- ако следващата температура е по-голяма от текущата
                                                                  -- връщаме разликата в индексите(дни)
      | otherwise = helper index (currIndex + 1) ts

-- 2ра задача
setupRobots :: [Int] -> String -> (Int -> [Int])
setupRobots xs ms = robotsPositions xs (map directionToInt ms)

-- функцията приема списък с началните позиции и списък с посоките
robotsPositions :: [Int] -> [Int] -> (Int -> [Int])
robotsPositions xs ms = (\t -> sort $ map (\(pos, dir) -> pos + t * dir) (zip xs ms))
-- Използваме sort, защото когато се срещнат два робота, не обръщам тяхната посока на движение
-- разменям местата на роботите, обаче и след това в списъка също ще са разменени и sort помага за тяхната първоначална наребда и то ми гарантира, 
-- защото когато роботът върви наляво той намялава позицията си 

-- функция, която превръща символен низ в посока на движение(R се превръща в 1)(L се превръща в -1)
directionToInt :: Char -> Int
directionToInt 'R' = 1
directionToInt 'L' = -1


