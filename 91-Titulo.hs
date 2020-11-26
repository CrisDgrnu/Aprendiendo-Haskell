import Data.Char
mayusculasInicial::String -> String
mayusculasInicial (x:xs) = toUpper x : [toLower x | x <- xs]


formatTitulo::[String] -> [String]
formatTitulo (x:xs) = (mayusculasInicial x):[ if (length x >= 4) then (mayusculasInicial x) else (minusuculas x) | x<-xs ]

minusuculas::String->String
minusuculas xs = [toLower x | x<-xs]