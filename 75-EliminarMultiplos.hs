cribarNF::[Int] -> Int -> [Int]
cribarNF [] _ = []
cribarNF (x:xs) n = if (x `mod` n == 0) then (cribarNF xs n) else (x:(cribarNF xs n))

cribarC::[Int] -> Int -> [Int]
cribarC xs n = [x | x<-xs, x `mod` n /= 0]

cribarF::[Int] -> Int -> [Int]
cribarF xs n = cribarAux xs n []

cribarAux::[Int] -> Int -> [Int] -> [Int]
cribarAux [] _  acu= acu
cribarAux (x:xs) n acu = if (x `mod` n /= 0) then (x:acu) ++ (cribarAux xs n acu) else (cribarAux xs n acu)