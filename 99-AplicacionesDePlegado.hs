import Data.Char

dobleValores::[Int] -> Int
dobleValores xs = foldl (\x y -> x+y*2) 0 xs

cuadradoValores::[Int] -> Int
cuadradoValores xs = foldl (\x y -> x+y*y) 0 xs

insertarFinal::[Int] -> Int -> [Int]
insertarFinal xs n = foldl (\ x y -> x ++ [y] ) [] (xs ++ [n])

borrarApariciones::[Int] -> Int -> [Int]
borrarApariciones xs n = foldl (\ x y  -> if y == n then x else x ++ [y] ) [] xs

pertenece::Eq a => [a] -> a -> Bool
pertenece xs e = foldl (\x y -> x || y == e)  False xs

apariciones::Eq a => [a] -> a -> Int
apariciones xs e = foldl (\x y -> if y == e then x+1 else x) 0 xs

separarMayusYMinis::String -> ([Char],[Char])
separarMayusYMinis xs = foldl (\ (ma,mi) y -> if isUpper y then (y:ma,mi) else (ma,y:mi)) ([],[]) xs