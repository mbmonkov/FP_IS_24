main :: IO()
main = do

    print $ finalGrade 3 4 4 4.25 4.50 3.75 4.25 5 4.25 == 4.34
    print $ finalGrade 6 6 6 4.50 5 4.50 4.75 5 4.75    == 4.95
    print $ finalGrade 6 0 4 6 6 5 4.75 6 4.75          == 5.14
    print $ finalGrade 4.25 0 3 2 0 0 0 0 0             == 2
    print $ finalGrade 5.50 6 6 6 5.50 5.25 4 5.50 4    == 5.05
    print $ finalGrade 6 6 6 5.50 5.50 4 5 5.50 5       == 5.25
    print $ finalGrade 6 6 6 5.25 6 4 4 5.63 3.50       == 4.84
    print $ finalGrade 6 5 2.40 4 5 4 5.10 4.30 4       == 4.52 -- my test

finalGrade :: Double -> Double -> Double -> Double -> Double -> Double -> Double -> Double -> Double -> Double
finalGrade d1 d2 d3 kz1 kz2 kt1 kt2 iz it 
 |0.5 * tk (averageHomework d1 d2 d3) (averageK kz1 kz2) (averageK kt1 kt2) 
                                     + 0.25 * whichGrade kz1 kz2 iz
                                     + 0.25 * whichGrade kt1 kt2 iz < 2 = 2
 |otherwise = (fromIntegral $ round $ (0.5 * tk (averageHomework d1 d2 d3) (averageK kz1 kz2) (averageK kt1 kt2) 
                                     + 0.25 * whichGrade kz1 kz2 iz
                                     + 0.25 * whichGrade kt1 kt2 iz) * 100) / 100

whichGrade :: Double -> Double -> Double -> Double 
whichGrade k1 k2 exam  
 | k1 >= 4.00 && k2 >= 4.00 && (averageK k1 k2 >= 4.50) = averageK k1 k2
 | otherwise = exam


averageHomework :: Double -> Double -> Double -> Double
averageHomework d1 d2 d3 = (d1 + d2 + d3) / 3

averageK :: Double -> Double -> Double
averageK k1 k2 = (k1 + k2) / 2 

tk :: Double -> Double -> Double -> Double
tk homework kz kt = 0.25 * homework + 3 / 8 * kz + 3/8 * kt 