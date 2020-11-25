apariciones::[Int] -> [(Int,Int)]
apariciones xs = [(x,y) | (x,y) <- zip xs [1..(length xs)]]

primerasAparaciones::[Int] -> [(Int,Int)]
primerasAparaciones xs = (primerasAparacionesAux (apariciones xs) [])

primerasAparacionesAux:: [(Int,Int)] -> [(Int,Int)] -> [(Int,Int)]
primerasAparacionesAux [] acu = acu
primerasAparacionesAux (x:xs) acu = if (pertenece x acu) then (primerasAparacionesAux xs acu) else (primerasAparacionesAux xs (acu++[x]))

pertenece::(Int,Int) -> [(Int,Int)] -> Bool
pertenece _ [] = False
pertenece (x1,x2) ((y1,y2):ys) = if (x1==y1)  then True else (pertenece (x1,x2) ys)