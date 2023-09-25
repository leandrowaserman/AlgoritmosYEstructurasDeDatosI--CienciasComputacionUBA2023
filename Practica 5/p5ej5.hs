-- 1 -- 

sumatoria :: (Num t) => [t] -> t
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs


sumaAcumulada :: (Num t) => [t] -> [t]
sumaAcumulada [] = []
sumaAcumulada (x:[]) = [x]
sumaAcumulada x = sumaAcumulada (init x) ++ [sumatoria x] -- init es como el head pero al reves

-- ejercicio extra -- 
esDivisiblePrimo :: Int -> Int
esDivisiblePrimo x y
    | y/=x && y /= 1 && mod x y == 0 = False
    | x==y || y==1 = True
    | otherwise = esDivisiblePrimo x (y-1)

esPrimo :: [Integer] -> [Integer]
esPrimo [] = []
esPrimo (x:xs)
    | esDivisiblePrimo x (x-1) = x : pasoRecursivo
    | otherwise = pasoRecursivo
    where pasoRecursivo = esPrimo xs

-- 2 -- 

descomponerEnPrimos :: [Integer] -> [[Integer]]
descomponerEnPrimos [] = []



