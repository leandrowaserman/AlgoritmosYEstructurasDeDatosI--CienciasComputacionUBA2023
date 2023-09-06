f1 :: Int -> Int
f1 n
    | n == 0 = 1
    | otherwise = 2^n + f1 (n-1)

f2 :: Int -> Float -> Float
f2 n q
    | n==1 = q
    | otherwise = q^n + f2 (n-1) q

f3 :: Int -> Float -> Float
f3 n q
    | n == 0 = 1
    | n == 1 = q^2 + q
    | otherwise = (q^(2*n)) + (q^((2*n)-1)) + f2 (n-1) q