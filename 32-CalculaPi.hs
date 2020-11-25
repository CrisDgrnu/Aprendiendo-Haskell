calcularPi::Float -> Float
calcularPi n = 4*sum[ (-1)**m / (2*m+1) | m <- [0..n]]



