import Data.List

half x = if even x
 then
  Just(x `div` 2)
 else Nothing

 -- [(*2),(+3)]<*>[1,2,3] APLICATIVE 
 -- (+1)<$>(+3)<$>Just 6 FUNCTOR


dividir n = if n > 1 then Just(n `div` 2) else Nothing