-- Ejercicio A

factorial n
    | n == 0 = 1
    | otherwise = n * factorial (n-1)


eAprox n 
    | n == 0  || n == 1 = 1
    | otherwise =  1 / (factorial n)


-- Ejercicio B

