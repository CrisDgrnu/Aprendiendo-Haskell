sumaDoblesC::[Int] -> Int
sumaDoblesC xs= sum[ x*2 | x<-xs]

sumaDoblesNF::[Int] -> Int
sumaDoblesNF [] = 0
sumaDoblesNF (x:xs) = x*2 + sumaDoblesNF xs

sumaDoblesF::[Int] -> Int
sumaDoblesF xs = sumaDoblesAux xs 0

sumaDoblesAux::[Int] -> Int -> Int
sumaDoblesAux [] acu = acu
sumaDoblesAux (x:xs) acu = (sumaDoblesAux xs acu+x*2)

sumaDoblesMap:: [Int] -> Int
sumaDoblesMap xs = sum (map (*2) xs)

sumaDoblesFold::[Int] -> Int
sumaDoblesFold xs = foldl (\x y -> x+y*2) 0 xs