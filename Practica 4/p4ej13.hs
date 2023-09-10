sumatoriaInterna :: Int -> Int -> Int
sumatoriaInterna n j
    | j==0 = 0
    | otherwise = n^j + sumatoriaInterna n (j-1)

sumatoriaDoble :: Int -> Int -> Int
sumatoriaDoble n j
    | n == 0 = 0
    | otherwise = sumatoriaInterna n j + sumatoriaDoble (n-1) j