codificar::String -> [Int]
codificar xs = transformarALong(separarEnLista xs)

getPrimeraPalabra::String -> String
getPrimeraPalabra xs = primeraAux xs []

primeraAux::String -> String -> String
primeraAux [] acu = acu
primeraAux (x:xs) acu = if x == ' ' then acu else primeraAux xs (acu ++ [x])

eliminarPrimera::String -> String
eliminarPrimera [] = []
eliminarPrimera (x:xs) = if (x == ' ') then xs else eliminarPrimera xs

separarEnLista::String -> [String]
separarEnLista [] = []
separarEnLista xs = (getPrimeraPalabra xs :(separarEnLista (eliminarPrimera xs)))

transformarALong::[String] -> [Int]
transformarALong xs = foldl (\x y -> x ++ [length y]) [] xs




