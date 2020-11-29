divisiones::Int->[Int]->[Maybe Int]
divisiones _ [] = []
divisiones n (x:xs) = if (x /=0) then ((Just (n `div` x)):(divisiones n xs)) else Nothing:(divisiones n xs)
