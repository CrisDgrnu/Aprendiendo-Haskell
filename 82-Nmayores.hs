mayores::[Int] -> Int -> [Int]
mayores xs n = mayoresAux xs n []

mayoresAux::[Int] -> Int -> [Int] -> [Int]
mayoresAux _ 0 acu = acu
mayoresAux xs n acu = mayoresAux (eliminar (maximum xs) xs) (n-1) ((maximum xs):acu)


eliminar::Int->[Int]->[Int]
eliminar n (x:xs) = if (x==n) then xs else x:(eliminar n xs)