ciclo::[Int] ->[Int]
ciclo [] = []
ciclo (x:xs) = xs ++[x]