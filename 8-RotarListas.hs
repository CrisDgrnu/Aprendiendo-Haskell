rota1::[Int] -> [Int]
rota1 (x:xs) = xs ++[x] 
rota1 l = tail l ++ [head l]

rotan::[Int]-> Int -> [Int]
rotan l n = (drop n l)++(take n l)
