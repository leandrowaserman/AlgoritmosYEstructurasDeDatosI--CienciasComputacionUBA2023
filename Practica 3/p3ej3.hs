estanRelacionados :: Int -> Int -> Bool

estanRelacionados a b 
    | a==0 = undefined
    | b== 0 = undefined
    | mod (-a) b == 0 = True
    | otherwise = False