digitosR::Int -> [Int]
digitosR n = if n<10 then [n] else digitosR (n `div` 10)++[n `mod` 10]

sumaDigtos::Int -> Int
sumaDigtos n = sum (digitosR n)