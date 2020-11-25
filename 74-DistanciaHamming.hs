distanciaC::Eq a => [a] -> [a] -> Int
distanciaC xs ys = sum[ 1 | (x,y) <- zip xs ys, x/=y]

distanciaR::Eq a => [a] -> [a] -> Int
distanciaR _ [] = 0
distanciaR [] _ = 0
distanciaR (x:xs) (y:ys) = if x /= y then  1+(distanciaR xs ys) else (distanciaR xs ys)