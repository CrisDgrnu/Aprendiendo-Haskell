replica::Int -> a -> [a]
replica n x = [x| _ <- [1..n]]