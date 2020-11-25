numeroBloquesR::Int -> Int
numeroBloquesR 1 = 2
numeroBloquesR n = 2*n + numeroBloquesR (n-1)

numeroBloquesC::Int -> Int
numeroBloquesC n = sum [2*x | x <- [1..n]]