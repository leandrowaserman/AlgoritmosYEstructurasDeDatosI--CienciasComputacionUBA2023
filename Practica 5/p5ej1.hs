-- 1 -- 

longitud :: [t] -> Integer
longitud [] = 0
longitud (x:xs) = 1 + longitud xs

-- 2 -- 

ultimo :: [t] -> [t]
ultimo [] = []
ultimo (x:[]) = [x]
ultimo (x:xs) = ultimo xs

-- 3 --

principio :: [t] -> [t]
principio [] = []
principio (x:[]) = []
principio (x:xs) = x:(principio xs)

-- 4 --
reverso :: [t] -> [t]
reverso [] = []
reverso (x:xs) = reverso xs ++ [x] -- El (++) es como un concat

reversoReverse :: [t] -> [t]
reversoReverse [] = []
reversoReverse x = reverse x


