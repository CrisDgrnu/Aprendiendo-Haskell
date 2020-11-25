cuadradosMap::[Int] -> [Int]
cuadradosMap xs = map (^2) xs

cuadradosR::[Int] -> [Int]
cuadradosR [] = []
cuadradosR (x:xs) = ((x*x):cuadradosR xs)

cuadradosC::[Int] -> [Int]
cuadradosC xs = [x*x | x<- xs]