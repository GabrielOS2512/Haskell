funcao :: Integer -> Integer
funcao n = 
 if n > 10 then
  fact n
 else 
  fib (n)

fact 0 = 1
fact n = n * fact (n-1)

fib (0) = 0
fib (1) = 1
fib (n) =  fib (n-2) + fib (n-1)
