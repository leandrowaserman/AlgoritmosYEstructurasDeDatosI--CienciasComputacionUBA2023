-- 1 -- 

sumatoria :: [Integer] -> Integer
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

-- 2 -- 

productoria :: [Integer] -> Integer
productoria [] = 1
productoria (x:xs) = x * productoria xs

-- 3 -- 

maximo :: [Integer] -> Integer
maximo [] = 0
maximo [x] = x
maximo (x:y:xs)
    | x>=y = maximo (x:xs)
    | otherwise = maximo (y:xs)


maximoMax :: [Integer] -> Integer  -- LA FUNCIÓN MAX DETERMINA Y DEVUELVE EL MAXIMO VALOR ENTRE 2 NUMEROS
maximoMax [x] = x 
maximoMax (x:xs) = max x (maximoMax xs)


-- 4 --

sumarN :: Integer -> [Integer] -> [Integer]
sumarN _ [] = []
sumarN n [x] = [x+n]
sumarN n (x:xs) = (x+n):(sumarN n xs)

-- 5 -- 

sumarElPrimero :: [Integer] -> [Integer] 

sumarElPrimero [] = []
sumarElPrimero [x] = [2*x]
sumarElPrimero (x:xs) = sumarN x (x:xs)

-- 6 -- 

sumarElUltimo :: [Integer] -> [Integer] 

sumarElUltimo [] = []
sumarElUltimo [x] = [2*x]
sumarElUltimo x = sumarN (last x) x -- LAST DEFINE EL ULTIMO ELEMENTO DE LA LISTA

-- 7 -- 

pares :: [Integer] -> [Integer]

pares [] = []
pares (x:xs)
    | mod x 2 == 0 = x:(pares xs)
    | otherwise = (pares xs)

-- 8 -- 

multiplosDeN :: Integer -> [Integer] -> [Integer]

multiplosDeN _ [] = []
multiplosDeN n (x:xs)
    | mod x n == 0 = x:(multiplosDeN n xs)
    | otherwise = (multiplosDeN n xs)

-- 9 -- 


-- REVISAR PORQUE NO LO ENTENDÍ -- 
ordenar :: [Integer] -> [Integer]
ordenar [] = [] -- Lista vacía, no hay elementos para ordenar
ordenar (x:xs) = ordenar [y | y <- xs, y <= x] ++ [x] ++ ordenar [y | y <- xs, y > x] -- "y" es una variable temporal que representa cada elemento de la lista xs
