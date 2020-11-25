replicar::Int -> a -> [a]
replicar 0 _ = []
replicar n x = (x:(replicate (n-1) x))