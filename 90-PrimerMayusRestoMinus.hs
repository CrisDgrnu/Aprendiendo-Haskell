import Data.Char
mayusculasInicial::String -> String
mayusculasInicial (x:xs) = toUpper x : [toLower x | x <- xs]