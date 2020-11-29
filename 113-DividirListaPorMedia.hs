dividirListaMedia::[Float] -> ([Float],[Float])
dividirListaMedia [] = ([],[])
dividirListaMedia xs = (filter ((calcularMedia xs)<) xs, filter ((calcularMedia xs)>=) xs )

calcularMedia::[Float] -> Float
calcularMedia xs = (sum xs) / fromIntegral(length xs)