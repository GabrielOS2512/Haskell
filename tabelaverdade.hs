tabela :: Int -> [[Int]]
tabela 0 = [[]]
tabela n = do
 x <- [0,1]
 map (x :) (tabela(n-1))

tabel :: Int -> IO()
tabel 0 = print 0 0 0

