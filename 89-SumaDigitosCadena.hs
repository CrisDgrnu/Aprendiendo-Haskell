import Data.Char
sumaDigitosC::String-> Int
sumaDigitosC c = foldl (\x y -> if (isDigit y) then x+(digitToInt y) else x) 0 c

sumaDigitosCL::String -> Int
sumaDigitosCL c = sum[ digitToInt x | x <- c , isDigit x]
