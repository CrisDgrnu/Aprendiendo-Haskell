listaDuplas::[a] -> [(a,Int)]
listaDuplas (x:xs) = reverse(foldl (\ ((e,p):eps) y -> (y,p+1):((e,p):eps)) [(x,1)] xs)

pertenece::Eq a => [(a,Int)] -> a -> Bool
pertenece [] _ = False
pertenece [(x,y)] e = x == e
pertenece ((x,y):ys) e = if (e == x) then True else (pertenece ys e)

primeraAparcion::[(Int,Int)] -> [(Int,Int)]
primeraAparcion (z:zs) = reverse(foldl (\ x (ye,yp) -> if (pertenece x ye) then x else ((ye,yp):x) ) [z] zs)

