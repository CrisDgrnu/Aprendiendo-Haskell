posiciones::String->Char->[Int]
posiciones s c = [y | (x,y) <- zip s [0..(length s)], x == c]