mcd::Int->Int->Int
mcd a 0 = a
mcd a b = mcd b (a `mod` b)  