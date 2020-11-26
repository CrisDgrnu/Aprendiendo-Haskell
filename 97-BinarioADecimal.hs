binarioADecimal::Int -> Int
binarioADecimal n = helper n 0

helper::Int->Int->Int
helper 0 _ = 0
helper n pot = if n `mod` 10 == 1 then (2^pot) + (helper (n `div` 10 ) (pot+1)) else (helper (n `div` 10 ) (pot+1))
