esDigito::Int -> Int -> Bool
esDigito n x= elem n (digitosR x)

digitosR::Int -> [Int]
digitosR n = if n<10 then [n] else digitosR (n `div` 10)++[n `mod` 10]