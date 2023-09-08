cantDigitos :: Int -> Int

cantDigitos n 
    | n<=0 = 0
    | otherwise = 1 + cantDigitos (div n 10)


iesimoDigito :: Int -> Int -> Int

iesimoDigito n i
    | n==0 || i>cantDigitos(n) = 0
    | i==1 = mod n 10
    | otherwise = iesimoDigito (div n 10) (i-1)