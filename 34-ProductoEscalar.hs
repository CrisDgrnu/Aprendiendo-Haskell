productoEscalar::[Int] -> [Int] -> Int
productoEscalar xs ys = sum [x*y | (x,y)<- zip xs ys]