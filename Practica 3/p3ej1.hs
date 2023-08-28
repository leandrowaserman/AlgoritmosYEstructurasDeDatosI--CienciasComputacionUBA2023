f1a x 
    | x == 1 = 8
    | x == 4 = 131
    | x == 16 = 16

f1b :: Int -> Int
f1b x
    | x == 8 = 16
    | x == 16 = 4
    | x == 131 = 1

f1ch x = f1a(f1b(x))
f1ck x = f1b(f1a(x))
