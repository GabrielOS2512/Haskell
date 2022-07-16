primeiros :: Int -> [Int] -> [Int]
primeiros n x = take n x

ultimos:: Int -> [Int] -> [Int]
ultimos n x = take n (reverse x)