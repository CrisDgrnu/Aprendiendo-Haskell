maxTres::Int->Int->Int->Int
maxTres x y z = max x (max y z)

maxTresA::Int->Int->Int->Int
maxTresA x y z 
    | x>y && y>z = x
    | z>y && y>x = z
    | y>z && z>x = y