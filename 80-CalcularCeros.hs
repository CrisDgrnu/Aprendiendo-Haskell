ceros::[Int] -> Int
ceros [] = 0
ceros [0] = 1
ceros [0,_] = 1
ceros (x:xs:xss) = if (x==0 && xs /=0) then 1+ceros (xs:xss) else ceros (xs:xss)


