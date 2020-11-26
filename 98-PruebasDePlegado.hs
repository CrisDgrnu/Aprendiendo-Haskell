f1::[Int] -> [Int]
f1 xs = foldr (\ a b -> a:b) [] xs

f2::[Int] -> [[Int]]
f2 xs = foldr (\ a b -> [a]:b) [] xs

f3::[Int] -> [Int]
f3 xs = foldl (\ a b -> if b == 2 then 0:a else b:a) [] xs

f4::[Int] -> [Int]
f4 xs = foldl (\ a b -> b:a) [] xs