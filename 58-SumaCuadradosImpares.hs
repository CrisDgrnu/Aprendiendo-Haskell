sumaCuadradosImpR::Int -> Int
sumaCuadradosImpR 1 = 1
sumaCuadradosImpR n = if n `mod` 2 /= 0 then n*n +sumaCuadradosImpR (n-1) else sumaCuadradosImpR (n-1)


sumaCuadradosImpC::Int -> Int
sumaCuadradosImpC n = sum[x*x | x<-[1..n], x`mod`2 /= 0]