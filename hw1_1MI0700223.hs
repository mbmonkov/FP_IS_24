main :: IO()
main = do

    -- примери за 1ва задача
    print $ numStepCombinations 2 == 2
    print $ numStepCombinations 15 == 987
    print $ numStepCombinations 100 == 573147844013817084101
    -- примери за 2ра задача
    print $ maxPersistenceMinSum 273 392 == 355
    print $ maxPersistenceMinSum 1000 2000 == 1679
    print $ maxPersistenceMinSum 55 105 == 77
    print $ maxPersistenceMinSum 195 756 == 679
    print $ maxPersistenceMinSum 2 85 == 77
-- 1задача
numStepCombinations :: Integer -> Integer -- приемаме и връщаме Integer, защото при малко по-голям вход, изходното число е много голямо
numStepCombinations num 
 | num <= 0 = error "The number should be positive"
 | otherwise = helper 1 1 num 
  where 
    helper :: Integer -> Integer -> Integer -> Integer
    helper n0 _ 0 = n0
    helper _ n1 1 = n1
    helper n0 n1 leftover = helper n1 (n0 + n1) (leftover - 1) 

-- 2задача
maxPersistenceMinSum :: Int -> Int -> Int
maxPersistenceMinSum start end = helper start end start -- Подаваме на heleper ф-ята start end start, като вторият start ще ни служи,
 where                                                  -- като число, което предвижваме в интервала от start до end.
    helper :: Int -> Int -> Int -> Int
    helper start end maxPersistence
     | start > end = maxPersistence
     | persistence start > (persistence maxPersistence) = helper (start + 1) end start -- намиране на число с по-добра устойчивост и сътвотетно поставяме него за maxPersistence 
     | persistence start == persistence maxPersistence && sumDigits start < sumDigits maxPersistence = helper (start + 1) end start -- намиране на число с по-добра устойчивост по критериите, 
     | otherwise = helper (start + 1) end maxPersistence -- извивакване на ф-я, като продължаваме проверката (+1)                   --  когато числата са с равна устойчивост и сътвотетно
                                                                                                                                    --  поставяме него за maxPersistence

persistence :: Int -> Int -- ф-я, която връща устойчивостта на число
persistence num 
 | num < 10 = 0
 | mod num 10 == 0 = 1
 | otherwise = 1 + persistence (productDgitis num)

sumDigits :: Int -> Int -- ф-я, която връща сбора на цифрите на число
sumDigits num
 | num < 10 = num
 | otherwise = mod num 10 + sumDigits (div num 10)

productDgitis :: Int -> Int -- ф-я, която връща произведението на цифрите на число
productDgitis num
 | num < 10 = num
 | otherwise = mod num 10 * productDgitis (div num 10)

