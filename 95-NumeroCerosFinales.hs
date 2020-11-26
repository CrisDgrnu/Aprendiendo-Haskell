numCeros::Int -> Int
numCeros n = if n `mod` 10 == 0 then 1+(numCeros (n `div` 10)) else 0