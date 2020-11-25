factoresPropios::Int -> [Int]
factoresPropios n = [x | x <- [1..n-1] , n `mod` x == 0]

abundates::Int -> Bool
abundates n = n < sum(factoresPropios n)

listaAbundantes::Int -> [Int]
listaAbundantes n = [x | x<-[1..n], abundates x ]

todosPares::Int->Bool
todosPares n =  and[ even x | x<-listaAbundantes n]

primerAbundanteImpar::Int
primerAbundanteImpar = head [x | x <- [1..],abundates x, odd x]