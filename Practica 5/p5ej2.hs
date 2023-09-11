-- 1 -- 

pertenece :: (Eq t) => t -> [t] -> Bool

pertenece _ [] = False
pertenece e (x:xs) = (e==x) || pertenece e xs

perteneceElem :: (Eq t) => t -> [t] -> Bool  -- El elem busca si ese objeto pertenece a otro

perteneceElem e x = elem e x

-- 2 -- 

todosIguales :: (Eq t) => [t] -> Bool

todosIguales [] = False
todosIguales (x:[]) = True
todosIguales (x:y:xs) = (x==y) && todosIguales(y:xs)

-- 3 -- 

todosDistintos :: (Eq t) => [t] -> Bool

todosDistintos [] = True
todosDistintos (x:xs) = not(pertenece x xs) && todosDistintos xs -- El "Not" invierte el valor de un bool

todosDistintosElem :: (Eq t) => [t] -> Bool -- El elem busca si ese objeto pertenece a otro

todosDistintosElem [] = True
todosDistintosElem (x:xs) = not(elem x xs) && todosDistintos xs -- El "Not" invierte el valor de un bool

-- 4 -- 

hayRepetidos :: (Eq t) => [t] -> Bool

hayRepetidos [] = False
hayRepetidos (x:[]) = False
hayRepetidos (x:xs) = pertenece x xs || hayRepetidos xs

hayRepetidosElem :: (Eq t) => [t] -> Bool

hayRepetidosElem [] = False
hayRepetidosElem (x:xs) = elem x xs || hayRepetidos xs

-- 5 -- 
quitar :: (Eq t) => t -> [t] -> [t]
quitar _ [] = [] 
quitar x (y:ys)
    | x == y = ys  -- Si encontramos x, lo eliminamos y devolvemos el resto de la lista
    | otherwise = y : quitar x ys  -- Si no es igual, conservamos y y continuamos con el resto de la lista

-- 6 -- 

quitarTodos :: (Eq t) => t -> [t] -> [t]

quitarTodos _ [] = [] 
quitarTodos e (x:xs)
    | e == x = quitarTodos e xs
    | otherwise = x : quitarTodos e xs 

-- 7 -- 

eliminarRepetidos :: (Eq t) => [t] -> [t]

eliminarRepetidos [] = []  -- Si la lista es vacía, no hay repeticiones que eliminar
eliminarRepetidos (x:xs) = x : eliminarRepetidos (quitarTodos x xs)

-- 8 -- 

mismosElementos :: (Eq t) => [t] -> [t] -> Bool

mismosElementos [] _ = False
mismosElementos _ [] = False
mismosElementos (x:[]) y = pertenece x y 
mismosElementos (x:xs) (y:ys) = (pertenece x (eliminarRepetidos (y:ys)) && mismosElementos xs (y:ys)) && (pertenece y (eliminarRepetidos (x:xs)) && mismosElementos ys (x:xs))

-- 9 -- 

capicua :: (Eq t) => [t] -> Bool
capicua s = s == reverse s -- La función Reverse, te invierte la lista


