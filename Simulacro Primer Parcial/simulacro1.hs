-- 1 --

tuplasRepetidas :: [(String, String)] -> Bool
tuplasRepetidas [] = False
tuplasRepetidas (x:[]) = False
tuplasRepetidas (x:y:xs) 
    | x==y || tuplasRepetidas (x:xs) = True
    | otherwise = tuplasRepetidas (x:xs) || tuplasRepetidas (y:xs)


invertirTuplas :: [(String, String)] -> [(String, String)] 
invertirTuplas [] = []
invertirTuplas [(x,y)] = [(y,x)]
invertirTuplas ((x,y):xs) = [(y,x)] ++ invertirTuplas xs 

mismasCoord :: [(String, String)] -> Bool
mismasCoord [] = False
mismasCoord [(x,y):xs] = (x==y) || mismasCoord xs

relacionesValidas :: [(String, String)] -> Bool
relacionesValidas [] = True
relacionesValidas (x:[]) = True
relacionesValidas (x:xs) = not (tuplasRepetidas (x:xs) || tuplasRepetidas (invertirTuplas (x:xs) || mismasCoord (x:xs)))


-- 2 -- 

transformarTupla :: [(String, String)] -> [String]
transformarTupla [] = []
transformarTupla ((x,y):[]) = [x,y]
transformarTupla ((x,y):xs) = [x,y] ++ transformarTupla xs

quitarTodos :: (Eq t) => t -> [t] -> [t]
quitarTodos _ [] = [] 
quitarTodos e (x:xs)
    | e == x = pasoRecursivo
    | otherwise = x : pasoRecursivo
    where pasoRecursivo = quitarTodos e xs

eliminarRepetidos :: [String] -> [String]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs) = x : eliminarRepetidos (quitarTodos x xs)

personas :: [(String, String)] -> [String]
personas [] = []
personas ((x,y):[]) = [x,y]
personas x = eliminarRepetidos (transformarTupla x) 

-- 3 -- 

amigosDe :: String -> [(String, String)] -> [String]
amigosDe _ [] = []
amigosDe e (x:xs) 
    | e == (fst x) && e/= (snd x) = (snd x) : (pasoRecursivo)
    | e == (snd x) && e/= (fst x)  = (fst x) : (pasoRecursivo)
    | otherwise = pasoRecursivo
    where pasoRecursivo = amigosDe e xs


-- 4 -- 
contarLista :: [t] -> Int
contarLista [] = 0
contarLista (x:[]) = 1
contarLista (x:xs) = 1 + contarLista xs

cantidadDeAmigos :: String -> [(String, String)] -> Int
cantidadDeAmigos _ [] = 0
cantidadDeAmigos e x = contarLista (amigosDe e x)

{-compararAmigos :: [String] -> String
compararAmigos [] = "nadie"
compararAmigos (x:[]) = x
compararAmigos (x:y:xs)
    | cantidadDeAmigos x xs >= cantidadDeAmigos y xs = compararAmigos (x:xs)
    | otherwise = compararAmigos (y:xs)



personaConMasAmigos :: [(String, String)] -> String
personaConMasAmigos [] = "nadie"
personaConMasAmigos ((x,y):[]) = x
personaConMasAmigos xs
    | cantidadDeAmigos (head personas (xs)) ((x,y):xs) > cantidadDeAmigos y ((x,y):xs) -}
