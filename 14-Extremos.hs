extremos::Int -> [Int] -> [Int]
extremos n l = take n l ++ (reverse (take n (reverse l)))