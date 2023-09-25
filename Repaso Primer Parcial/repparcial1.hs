-- pertenece -- 

pertenece1 :: (Eq t) => t -> [t] -> Bool
pertenece1 _ [] = False
pertenece1 e (x:xs) 
    | e==x = True
    | otherwise = pertenece1 e xs

pertenece2 :: (Eq t) => t -> [t] -> Bool
pertenece2 _ [] = False
pertenece2 e (x:xs) = (e==x) || pertenece2 e xs

pertenece3 :: (Eq t) => t -> [t] -> Bool
pertenece3 e xs = elem e xs


-- quitar todo de un numero -- 

quitarTodo :: (Eq t) => t -> [t] -> [t]
quitarTodo _ [] = []
quitarTodo e (x:xs)
    | e==x = quitarTodo e xs
    | otherwise = x : (quitarTodo e xs)

-- eliminar repetidos de una lista

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) = x : eliminarRepetidos (quitarTodo x xs)

-- sumar cifras --

sumarCifras :: Int -> Int
sumarCifras x
    | mod x 10 == 0 = x
    | otherwise = (mod x 10) + sumarCifras (div x 10)

-- sumatoria -- 

sumatoria :: (Num t) => [t] -> t
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

-- contar palabras -- 

sacarUltimo :: [t] -> [t]
sacarUltimo [] = []
sacarUltimo [x] = []
sacarUltimo (x:xs) = x : sacarUltimo xs

eliminarEspaciosIniFin :: [Char] -> [Char]
eliminarEspaciosIniFin [] = []
eliminarEspaciosIniFin (x:xs)
    | x==' ' = eliminarEspaciosIniFin xs
    | head (reverse xs) == ' ' = eliminarEspaciosIniFin (x : sacarUltimo xs)
    | otherwise = (x:xs)

contarEspacios :: [Char] -> Int
contarEspacios [] = 0
contarEspacios (x:xs)
    | x==' ' = 1 + contarEspacios xs
    | otherwise = contarEspacios xs

sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos [x] = [x]
sacarBlancosRepetidos (x:y:xs)
    | x==y && x==' ' = sacarBlancosRepetidos (y:xs)
    | otherwise = [x] ++ sacarBlancosRepetidos (y:xs)

contarPalabras :: [Char] -> Int
contarPalabras [] = 0
contarPalabras (x:xs) = 1 + contarEspacios (eliminarEspaciosIniFin (sacarBlancosRepetidos (x:xs)))

-- encontrar Maximo -- 

encontrarMaximo :: [Int] -> Int
encontrarMaximo [] = 0
encontrarMaximo [x] = x
encontrarMaximo (x:y:xs)
    | x>=y = encontrarMaximo (x:xs)
    | otherwise = encontrarMaximo (y:xs)

-- calcular promedio -- 

cantidadElementos :: [t] -> Float
cantidadElementos [] = 0
cantidadElementos (x:xs) = 1 + cantidadElementos xs

cantidadElementosLength :: [t] -> Int
cantidadElementosLength xs = length xs

calcPromedio :: [Float] -> Float
calcPromedio [] = 0
calcPromedio xs = (sumatoria xs) / (cantidadElementos xs) 

-- descomponer en primos -- 

minimoDivisorAux::Int->Int->Int
minimoDivisorAux x n 
    | mod x n == 0 = n
    | otherwise = minimoDivisorAux x (n+1)


minimoDivisor :: Int -> Int
minimoDivisor x = minimoDivisorAux x 2

convertirEnPrimos :: Int -> [Int]
convertirEnPrimos 1 = []
convertirEnPrimos x = (minimoDivisor x) : (convertirEnPrimos (div x (minimoDivisor x)))

descomponerEnPrimos :: [Int] -> [[Int]]
descomponerEnPrimos [] = []
descomponerEnPrimos (x:xs) = convertirEnPrimos x : descomponerEnPrimos xs

-- multiplicar elementos -- 

productoria :: (Num t) => [t] -> t
productoria [] = 1
productoria (x:xs) = x * (productoria xs)

productoriaInterna :: (Num t) => [[t]] -> [t]
productoriaInterna [] = [1]
productoriaInterna (x:xs) = productoria x : (productoriaInterna xs)

-- minimo -- 

minimo :: [Int] -> Int
minimo (x:[]) = x
minimo (x:y:xs)
    | x <= y = minimo (x:xs)
    | otherwise = minimo (y:xs)

-- maximo -- 

maximo :: [Int] -> Int
maximo (x:[]) = x
maximo (x:y:xs)
    | x >= y = maximo (x:xs)
    | otherwise = maximo (y:xs)

-- ordenar listas -- 

eliminarUnElemento :: (Eq t) => t -> [t] -> [t]
eliminarUnElemento _ [] = []
eliminarUnElemento n (x:xs)
    | n==x = xs
    | otherwise = x : (eliminarUnElemento n xs)

ordenarMayMen :: [Int] -> [Int]
ordenarMayMen [] = []
ordenarMayMen xs = maximo xs : ordenarMayMen (eliminarUnElemento (maximo xs) xs)

ordenarMenMay :: [Int] -> [Int]
ordenarMenMay [] = []
ordenarMenMay xs = minimo xs : ordenarMenMay (eliminarUnElemento (minimo xs) xs)

-- separar en palabras -- 

agarrarPrimeraPalabraAux :: [Char] -> [Char]
agarrarPrimeraPalabraAux [] = []
agarrarPrimeraPalabraAux (x:xs)
    | x == ' ' = []
    | otherwise = x : agarrarPrimeraPalabraAux xs

agarrarPrimeraPalabra :: [Char] -> [Char]
agarrarPrimeraPalabra [] = []
agarrarPrimeraPalabra xs = agarrarPrimeraPalabraAux (eliminarEspaciosIniFin xs)

sacarPrimeraPalabra :: [Char] -> [Char]
sacarPrimeraPalabra [] = []
sacarPrimeraPalabra (x:xs)
    | x /= ' ' = sacarPrimeraPalabra xs
    | otherwise = xs

separarPalabras :: [Char] -> [[Char]]
separarPalabras [] = []
separarPalabras xs = agarrarPrimeraPalabra xs : separarPalabras (sacarPrimeraPalabra (sacarBlancosRepetidos xs))
 

