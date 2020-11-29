type Racional = (Float,Float)

equivalentesT::[Racional] -> Racional -> [Racional]
equivalentesT [] _ = []
equivalentesT ((nx,dx):xs) (n,d) = if ((nx*d) == (dx*n)) then ((nx,dx):(equivalentesT xs (n,d))) else equivalentesT xs (n,d)

data Racional2 = R Float Float deriving Show

equivalentesD::[Racional2] -> Racional2 -> [Racional2]
equivalentesD [] _ = []
equivalentesD ((R nx dx):xs) (R n d) = if  ((n*dx) == (nx*d)) then ((R nx dx):equivalentesD xs (R n d)) else equivalentesD xs (R n d)    