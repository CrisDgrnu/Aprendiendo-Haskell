seleccionarN::Int -> [a] -> [a]
seleccionarN 0 l = l
seleccionarN _ [] = []
seleccionarN n (x:xs) = seleccionarN (n-1) xs 