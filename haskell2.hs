funcao :: Int -> Bool
funcao n =
 if n > 20 || n < 2 then
  False
 else if n == 2 then
  True
 else
  primo n

primo n = divisores n == [1,n]
divisores n = [x | x <- [1..n], mod n x == 0]