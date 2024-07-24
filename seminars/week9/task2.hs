
main :: IO()
main = do

    print $ findJudge 2 [(1, 2)] == 2
    print $ findJudge 3 [(1, 3), (2, 3)] == 3
    print $ findJudge 3 [(1, 3), (2, 3), (3, 1)] == -1
    print $ findJudge 3 [(1, 2), (2, 3)] == -1
    print $ findJudge 4 [(1, 3), (1, 4), (2, 3), (2, 4), (4, 3)] == 3

findJudge :: Int -> [(Int, Int)] -> Int
findJudge n trusts = everyBodyTrust trustsNobody  
 where 
    pplWhoTrust = map fst trusts 
    trustsNobody
     | length candidates == 1 = head candidates
     | otherwise = -1 
        where 
            candidates = filter (\ person -> notElem person pplWhoTrust) [1 .. n]
everyBodyTrust (-1) = -1 
    everyBodyTrust candidate
     | (length $ filter (== candidate) $ map snd trusts) == (n - 1) = candidate
     | otherwise = -1