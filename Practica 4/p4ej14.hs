sumatoriaInterna14 :: Int -> Int -> Int
sumatoriaInterna14 n j
    | j==1 = n+1
    | otherwise = (n+j) + sumatoriaInterna14 n (j-1)

sumatoriaDoble14 :: Int -> Int -> Int
sumatoriaDoble14 n j
    | n == 0 = 0
    | otherwise = sumatoriaInterna14 n j + sumatoriaDoble14 (n-1) j

sumaPotencias :: Int -> Int -> Int -> Int
sumaPotencias q n m = q^(sumatoriaDoble14 n m)