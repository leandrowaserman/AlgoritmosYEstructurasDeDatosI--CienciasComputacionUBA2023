parteEntera :: Float -> Int
parteEntera x
    | x>=0 && x<1 = 0
    | otherwise = 1 + parteEntera (x-1)