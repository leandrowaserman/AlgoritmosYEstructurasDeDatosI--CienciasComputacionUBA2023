sumaDigitos :: Int -> Int

sumaDigitos x
    | x<=0 = 0
    | otherwise = mod x 10 + sumaDigitos (div x 10)