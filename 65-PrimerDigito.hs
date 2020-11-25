primerDigitoR::Int -> Int
primerDigitoR n =  head (digitosR n)

digitosR::Int -> [Int]
digitosR n = if n<10 then [n] else digitosR (n `div` 10)++[n `mod` 10]