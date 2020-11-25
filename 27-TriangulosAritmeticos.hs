suma::Int->Int
suma n = sum[x |x<- [1..n]]

linea::Int -> [Int]
linea n = [(suma(n-1)+1)..suma n]

triangulo::Int -> [[Int]]
triangulo n = [linea m | m <-[1..n]]