todoMenor :: (Float, Float) -> (Float, Float) -> Bool
todoMenor a b
    | fst a < snd a && fst b < snd b = True
    | otherwise = False

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos a b = sqrt ((fst b - fst a)^2 + (snd b - snd a)^2)

sumaTerna :: (Float, Float, Float) -> Float
sumaTerna (x, y, z) = x + y + z

--sumarSoloMultiplos :: (Float, Float, Float) -> Float -> Float
-- sumarSoloMultiplos (x,y,z) k
    -- | mod x k == 0 && mod y k == 0 && mod z k == 0 = x+y+z
--     | mod x k == 0 && mod k == 0 && mod z k /= 0 = x+y
  --   | mod x k == 0 && mod y k /= 0 && mod z k == 0 = x+z
  --   | mod x k /= 0 && mod y k == 0 && mod z k == 0 = y+z
--     | mod x k == 0 && mod y k /= 0 && mod z k /= 0 = x
--     | mod x k /= 0 && mod y k == 0 && mod z k /= 0 = y
--     | mod x k /= 0 && mod y k /= 0 && mod z k == 0 = z
    

crearPar a b = (a,b)

invertir a = (snd a, fst a)