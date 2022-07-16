suaFunc1:: (Num a) => a -> a -> a
suaFunc1 a b = a+b

suaFunc2 :: a -> a -> a
suaFunc2 a b = b

suaFunc3 :: (Fractional a) => a -> a -> a
suaFunc3 a b = a/b

suaFunc4 :: [a] -> Int
suaFunc4 x = 10

dividir n = if n > 1 then Just(n / 2) else Nothing