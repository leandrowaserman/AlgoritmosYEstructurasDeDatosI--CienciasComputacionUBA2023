absoluto x = abs x

maxAbsoluto x y
    | abs x  >= abs y = abs x
    | otherwise = abs y

maximo3 x y z 
    | x>=y && x>=z = x
    | y>x && y>=z = y
    | otherwise = z

algunoEs0 :: Float -> Float -> Bool
algunoEs0 x y = (x==0 || y==0)

algunoEs0Pattern :: Float -> Float -> Bool
algunoEs0Pattern 0 _ = True
algunoEs0Pattern _ 0 = True
algunoEs0Pattern _ _ = False

ambosSon0 :: Float -> Float -> Bool
ambosSon0 x y = (x==0 && y==0)

ambosSon0Pattern :: Float -> Float -> Bool
ambosSon0Pattern 0 0 = True
ambosSon0Pattern _ 0 = False
ambosSon0Pattern 0 _ = False
ambosSon0Pattern _ _ = False

mismoIntervalo :: Float -> Float -> Bool
mismoIntervalo x y
    | x<=3 && y<=3 = True
    | 3<x && x<=7 && 3<y && y<=7 = True
    | x>=7 && y>=7 = True
    | otherwise = False

sumaDistintos x y z
    | x/=y && y/=z && x/=z = x+y+z
    | x==y && y==z = 0
    | y==z = x
    | x==z = y
    | x==y = z

esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y 
    | x<0 || y<0 = False
    | mod x y == 0 = True
    | otherwise = False

digitoUnidades x = mod x 10

digitoDecenas x = mod x 100 - mod x 10