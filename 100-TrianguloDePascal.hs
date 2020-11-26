pascal::Int -> [Int]
pascal 0 = [1]
pascal 1 = [1,1]
pascal n = [1] ++ sumaP(pascal (n-1)) ++[1]

sumaP:: [Int] -> [Int]
sumaP [x,y] = [x+y]
sumaP (x:y:ys) = [x+y] ++ sumaP (y:ys)
