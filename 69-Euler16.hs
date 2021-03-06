digitosR::Int -> [Int]
digitosR n = if n<10 then [n] else digitosR (n `div` 10)++[n `mod` 10]

listaToNumeroR::[Int] -> Int
listaToNumeroR [] = 0
listaToNumeroR (x:xs) = x*(10^(length (x:xs)-1)) + listaToNumeroR xs

euler16::Int -> Int
euler16 n = sum (digitosR (2^n))