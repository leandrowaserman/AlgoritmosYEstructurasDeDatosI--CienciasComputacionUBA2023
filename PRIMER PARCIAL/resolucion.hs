-- Ejercicio 1
division :: Int -> Int -> Float
division a b = (fromIntegral a) / (fromIntegral b)

sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:[]) = x
sumatoria (x:xs) = x + sumatoria xs

cortarLista :: (Eq t) => [t] -> Int -> [t]
cortarLista [] _ = []
cortarLista _ 0 = []
cortarLista (x:xs) n = x : cortarLista (xs) (n-1)

porcentajeDeVotosAfirmativos :: [(String,String)] -> [Int] -> Int -> Float
porcentajeDeVotosAfirmativos _ [] _ = 0
porcentajeDeVotosAfirmativos formulas (x:xs) e 
    | length (formulas) /= length (x:xs) = (division (sumatoria (cortarLista (x:xs) (length formulas))) e) * 100
    | otherwise = (division (sumatoria (x:xs)) e) * 100  


-- Ejercicio 2  

eliminarEspaciosIniFin :: [Char] -> [Char]
eliminarEspaciosIniFin [] = []
eliminarEspaciosIniFin (x:xs) 
    | x==' ' = eliminarEspaciosIniFin xs
    | otherwise = x : eliminarEspaciosIniFin xs

vacio :: [(String, String)] -> Bool
vacio [] = True
vacio ((x,y):[]) = (eliminarEspaciosIniFin x == "" || eliminarEspaciosIniFin y == "")
vacio ((x,y):xs)
    | (eliminarEspaciosIniFin x) ==" " || (eliminarEspaciosIniFin y) ==" " = False
    | otherwise = vacio xs

mismoCandidato :: [(String, String)] -> Bool
mismoCandidato [] = False
mismoCandidato ((x,y):[]) = (eliminarEspaciosIniFin x== eliminarEspaciosIniFin y)
mismoCandidato ((x,y):xs)
    | eliminarEspaciosIniFin x == eliminarEspaciosIniFin y = True
    | otherwise = mismoCandidato xs

presidenteYVice :: [(String, String)] -> Bool
presidenteYVice [] = False
presidenteYVice ((x,y):[]) = (eliminarEspaciosIniFin x == eliminarEspaciosIniFin y)
presidenteYVice (x:y:xs)
    | (eliminarEspaciosIniFin (fst x) == eliminarEspaciosIniFin (snd y)) || (eliminarEspaciosIniFin (snd x) == eliminarEspaciosIniFin (fst y)) = True
    | otherwise = presidenteYVice (x:xs) || presidenteYVice (y:xs)

mismaFormula :: [(String, String)] -> Bool
mismaFormula [] = False
mismaFormula (x:[]) = False
mismaFormula (x:y:[]) = x==y
mismaFormula (x:y:xs)
    | x == y = True
    | otherwise = mismaFormula (x:xs) || mismaFormula (y:xs)

formulasInvalidas :: [(String, String)] -> Bool
formulasInvalidas [] = False
formulasInvalidas xs = (vacio xs || mismoCandidato xs || mismaFormula xs || presidenteYVice xs)

-- Ejercicio 3


formulasConVice :: [(String, String)] -> String -> [(String, String)]
formulasConVice [] _ = []
formulasConVice ((x,y):xs) vice
    | eliminarEspaciosIniFin y == eliminarEspaciosIniFin vice = (x,y) : (formulasConVice xs vice)
    | otherwise = formulasConVice xs vice

indexDeLista :: (Eq t) => [(t,t)] -> [(t,t)] -> [Int]
indexDeLista [] _ = []
indexDeLista _ [] = []
indexDeLista (x:xs) (y:ys)
    | y==x = 0 : indexDeLista (x:xs) ys
    | otherwise = ordenarMenorMayor (getIndex (x:xs) y : indexDeLista (x:xs) ys)

eliminarUnElemento :: (Eq t) => [t] -> t -> [t]
eliminarUnElemento [] _ = []
eliminarUnElemento (x:xs) y
    | y==x = xs
    | otherwise = x : (eliminarUnElemento xs y)

ordenarMenorMayor :: [Int] -> [Int]
ordenarMenorMayor [] = []
ordenarMenorMayor [x] = [x]
ordenarMenorMayor xs = minimo xs : ordenarMenorMayor (eliminarUnElemento xs (minimo xs))

indexAElementoLista :: (Eq t) => [t] -> [Int] -> [t]
indexAElementoLista [] _ = []
indexAElementoLista xs [] = []
indexAElementoLista xs (y:ys) = (indexAElemento xs y) : (indexAElementoLista xs ys)

porcentajeDeVotos :: String -> [(String, String)]  -> [Int] -> Float
porcentajeDeVotos "" _ _ = 0
porcentajeDeVotos _ _ [] = 0
porcentajeDeVotos vice xs ys = (division (sumatoria (indexAElementoLista ys (indexDeLista xs (formulasConVice xs vice)))) (sumatoria ys)) * 100


-- Ejercicio 4

minimo :: [Int] -> Int
minimo (x:[]) = x
minimo (x:y:xs)
    | x<=y = minimo (x:xs)
    | otherwise = minimo (y:xs)

getIndex :: (Eq t) => [t] -> t -> Int
getIndex [] _ = 0
getIndex (x:xs) y
    | x==y = 0
    | otherwise = 1 + getIndex xs y

indexAElemento :: (Eq t) => [t] -> Int -> t
indexAElemento (x:xs) 0 = x
indexAElemento (x:xs) n = indexAElemento xs (n-1)


menosVotado :: [(String, String)] -> [Int] -> String
menosVotado (x:[]) _ = fst x
menosVotado xs ys = fst (indexAElemento xs (getIndex ys (minimo ys))) 