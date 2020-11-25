posiciones::Int -> [Int] -> [Int]
posiciones n xs = [y | (x,y) <- zip xs [0..(length xs)], x==n]