-- 1 -- 

sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos [x] = [x]
sacarBlancosRepetidos (x:y:xs)
    | x==y && x==' ' = pasoRecursivo
    | otherwise = [x]++pasoRecursivo
    where pasoRecursivo = sacarBlancosRepetidos (y:xs)

-- 2 -- 

quitarUltimo :: [Char] -> [Char]
quitarUltimo [] = []
quitarUltimo [x] = []
quitarUltimo (x:xs) = [x]++(quitarUltimo xs)

quitarEspaciosIniFin :: [Char] -> [Char]
quitarEspaciosIniFin [] = []
quitarEspaciosIniFin (x:xs) 
    | x==' ' && head(reverse(xs))==' ' = (quitarUltimo xs)
    | x==' ' = xs
    | head(reverse(xs))==' ' = quitarUltimo (x:xs)
    | otherwise = x:xs

contarEspacios :: [Char] -> Int
contarEspacios [] = 0
contarEspacios (x:xs) 
    | x==' '= 1 + pasoRecursivo
    | otherwise = pasoRecursivo
    where pasoRecursivo = contarEspacios xs

contarPalabras :: [Char] -> Int
contarPalabras [] = 0
contarPalabras x = (contarEspacios (quitarEspaciosIniFin (sacarBlancosRepetidos x))) + 1