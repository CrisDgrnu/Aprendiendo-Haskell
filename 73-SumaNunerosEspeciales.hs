factores::Int->[Int]
factores n = [x | x<-[1..n], n `mod` x == 0] 

primo::Int -> Bool
primo n = [1,n] == factores n

especial::Int->Bool
especial n = and[primo(d+(n `div` d)) | d<-factores n]

sumaEspecialesC::Int->Int
sumaEspecialesC n = sum[x | x<-[1..n] , (especial x)]

sumaEspecialesR::Int ->Int
sumaEspecialesR 1 = 1
sumaEspecialesR n = if (especial n) then n+sumaEspecialesR (n-1) else sumaEspecialesR (n-1)