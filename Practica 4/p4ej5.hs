medioFact :: Int ->Int

medioFact n 
    | n<0 = 0
    | n <= 1 = 1
    | otherwise = n * medioFact (n-2)