invertirFold:: [a] -> [a]
invertirFold xs = (foldl (\x y -> y:x) [] xs)

invertirRNF:: [a] -> [a]
invertirRNF [] = []
invertirRNF [x] = [x]
invertirRNF (x:xs) = invertirRNF xs ++ [x]

invertirRF:: [a] -> [a]
invertirRF xs = invertirAcu xs []

invertirAcu:: [a] -> [a] -> [a]
invertirAcu [] acu = acu
invertirAcu (x:xs) acu = invertirAcu xs (x:acu)