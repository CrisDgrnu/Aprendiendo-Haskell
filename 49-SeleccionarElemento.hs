seleccionar::[a] -> Int -> a
seleccionar xs 0 = head xs
seleccionar (x:xs) n = seleccionar xs (n-1)
