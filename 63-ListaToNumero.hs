listaToNumeroR::[Int] -> Int
listaToNumeroR [] = 0
listaToNumeroR (x:xs) = x*(10^(length (x:xs)-1)) + listaToNumeroR xs

listaToNumeroC::[Int] -> Int
listaToNumeroC xs = sum[x*10^n | (x,n) <- (zip (reverse xs) [0..]) ]