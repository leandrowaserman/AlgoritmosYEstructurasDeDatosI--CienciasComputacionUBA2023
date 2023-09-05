esDivisible :: Int -> Int -> Bool

esDivisible x y
    | x<y = False
    | x==y = True
    | y == 1  = True
    | otherwise = esDivisible (x-y) y