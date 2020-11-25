sumaCuadradosR::Int->Int
sumaCuadradosR 0 = 0
sumaCuadradosR n = n^2+sumaCuadradosR (n-1)

sumaCuadradosC::Int -> Int
sumaCuadradosC n = sum[x*x | x <- [1..n]]