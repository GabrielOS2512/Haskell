data Forma = Cilindro Float Float Float Float Float deriving (Show)
area (Cilindro _ y1 _ y2 r) = 2 * (pi*r^2) + (2 * pi * r * (abs $ y2 - y1))

data C = C {x1::Float ,y1::Float ,x2::Float ,y2::Float ,r::Float} deriving (Eq,Ord,Show)