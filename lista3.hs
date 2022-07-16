ordenar :: [Int] -> [Int]
ordenar [] = []
ordenar [x] = [x]
ordenar (p:s:r) =
 if p < s then
  p: ordenar (s:r) 
 else
  s : ordenar(p:r)

--2
--tipo da funcao lista entra em contradiçao

sorted :: (Ord a) => [a] -> Bool
sorted [] = True
sorted [x] = True
sorted (x:y:xs) = if x <= y then sorted (y:xs) else False

quinto :: [a] -> a
quinto x = head(tail(tail(tail(tail x))))

arearetangulo :: IO()
arearetangulo = do 
 putStrLn "Insira a base do retângulo"
 b <- readLn
 putStrLn "Insira a altura do retângulo"
 h <- readLn
 putStrLn "A área do retângulo é: "
 print (b * h)

reverso :: [a] -> [a]
reverso xs = foldl (\acc x-> x : acc) [] xs

--map(\x-> x+1)[1,2,3] = map (+1)[1,2,3]
lambda x = map(\x -> x*1+2)


replica :: Int -> Int -> [Int] -> [Int]
replica 0 _ lista = lista
replica n x lista = replica (n-1) x (lista ++ [x])

primeiros :: Int -> [a] ->  [a]
primeiros n lista = take n lista

ignore :: Int -> [a] ->  [a]
ignore _ [] = []
ignore 0 lista = lista
ignore n lista = ignore (n-1) (tail lista)

duplica :: [Int] -> [Int]
duplica []=[]
duplica (n:ns) = (2*n): duplica ns

aplicar :: (Int -> Int) -> [Int] -> [Int]
aplicar _ [] = []
aplicar f (n:ns) = (f n):aplicar f ns

multiplica2:: Int -> [Int] -> [Int]
multiplica2 m = aplicar((*)m)

heads :: [[a]] -> [a]
heads = map head

data Data = Data {ano :: Int, mes :: Int, dia :: Int} deriving (Show)
calendario = Data 2020 08 22

retornoFatorial :: IO()
retornoFatorial = do 
 putStrLn "Insira o Número Escolhido"
 n <- readLn
 putStrLn "O resultado é: "
 print (fatorial n)

fatorial 0 = 1
fatorial n = n * fatorial (n-1)

func []  = True
func [_] = True
func xs  = (head xs) == (last xs) && (func (init ( tail xs)))