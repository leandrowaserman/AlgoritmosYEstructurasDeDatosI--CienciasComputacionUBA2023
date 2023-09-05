f1 :: Int -> Int
f1 n
    | n == 0 = 1
    | otherwise = 2^n + f1 (n-1)

f2 :: Int -> Float -> Float
f2 n q
    | n==1 = q
    | otherwise = q^n + f2 (n-1) q