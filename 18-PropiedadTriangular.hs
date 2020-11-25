triangular::Int->Int->Int->Bool
triangular x y z = x<y+z && y<x+z && z<x+y