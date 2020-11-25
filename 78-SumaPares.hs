sumarParesC::[Int] -> Int
sumarParesC xs = sum[ x*x | x <- xs , x `mod` 2 ==0]  

sumaParesSUP::[Int] ->  Int
sumaParesSUP xs =  sum(map (^2) (filter even xs))

