import Test.HUnit

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
sumarN n (x:[]) = [x+n]
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
    | mod x 2 == 0 = x:pasoRecursivo
    | otherwise = pasoRecursivo
    where pasoRecursivo = pares xs

testSuitePares = test [
  "lista vacia" ~: (pares []) ~?= [],
  "solo impares" ~: (pares [3,5,7]) ~?= [],
  "1 par" ~: (pares [2,3,5]) ~?= [2],
  "1 solo valor par" ~: (pares [2]) ~?= [2],
  "1 solo valor impar" ~: (pares [15]) ~?= [],
  "muchos pares" ~: (pares [-2,4,6,8]) ~?= [-2,4,6,8],
  "mezcla" ~: (pares [2,3,4,5,6,7,8,-1,-3,-2]) ~?= [2,4,6,8,-2]
  ]

correrTestPares = runTestTT testSuitePares

-- 8 -- 

multiplosDeN :: Integer -> [Integer] -> [Integer]
multiplosDeN _ [] = []
multiplosDeN n (x:xs)
    | n == 0 && x == 0 = [0]
    | n /= 0 && mod x n == 0 = x:pasoRecursivo
    | otherwise = pasoRecursivo
    where pasoRecursivo = multiplosDeN n xs


testSuiteMultiplosDeN = test [
  "lista vacia" ~: (multiplosDeN 4 []) ~?= [],
  "valor 0, mult 1" ~: (multiplosDeN 0 [-1,0,9]) ~?= [0],
  "valor < 0, mult 0" ~: (multiplosDeN (-3) [20,13,-4]) ~?= [],
  "valor < 0, mult 1" ~: (multiplosDeN (-8) [9,-16,7]) ~?= [-16],
  "valor < 0, mult > 1" ~: (multiplosDeN (-7) [0,-14,15]) ~?= [0,-14],
  "valor > 0, mult 0" ~: (multiplosDeN 5 [4,-7,9]) ~?= [],
  "valor > 0, mult 1" ~: (multiplosDeN 7 [7,8,-9]) ~?= [7],
  "valor > 0, mult > 1" ~: (multiplosDeN 11 [-22,10,33]) ~?= [-22,33] 
  ]

correrTestMultN = runTestTT testSuiteMultiplosDeN

-- 9 -- 

ordenar :: [Integer] -> [Integer]
ordenar [] = []
ordenar (x:xs) = ordenar [y | y <- xs, y <= x] ++ [x] ++ ordenar [y | y <- xs, y > x] -- "y" es una variable temporal que representa cada elemento de la lista xs

-- revisa todos los elementos de xs y si son menores o iguales que x, van al inicio y si son mayores, van al final
