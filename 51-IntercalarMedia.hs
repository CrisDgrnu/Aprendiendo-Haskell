refinada :: [Float] -> [Float]
refinada [] = []
refinada [x] = [x]
refinada (x:y:ys) = [x] ++ [(x+y)/2] ++ refinada (y:ys)

