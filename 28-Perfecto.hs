factores::Int -> [Int]
factores n = [x | x <- [1..n] , n `mod` x == 0]

perfectos::Int -> [Int]
perfectos n = [x | x <- [1..n], x == sum(init(factores x))]
