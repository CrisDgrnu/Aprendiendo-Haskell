data Monomio = M (Int,Int)
data Polinomio = P [Monomio]

instance Show Monomio where
    show (M (a,0)) = show a
    show (M (a,1)) = show a ++ "x"
    show (M (a,b)) = show a ++ "x^" ++ show b

instance Show Polinomio where
    show(P []) = ""
    show(P [m]) = show m 
    show(P (m:ms)) = show m  ++ "+" ++ show (P ms)

instance Eq Monomio where
    M (a,b) == M (c,d) = (a==c) && (b==d)

instance Eq Polinomio where
    P [] == P[] = True
    P [] == _ = False
    _ == P [] = False
    P (m:ms) == P (n:ns) = (m == n) && (P ms == P ns) 

instance Ord Monomio where
    M (a,b) <= M (c,d) = b <= d || ((b==d) && (a<=c))

instance Ord Polinomio where
    P [] <= P[] = True
    P [] <= _ = True
    _ <= P [] = False
    P (m:ms) <= P (n:ns) = m <= n 


p1 = (P [M(2,3),M(2,2),M(2,1),M(2,0)])

evaluaPolinomio::Int->Polinomio->Int
evaluaPolinomio _ (P []) = 0
evaluaPolinomio n (P (M(c,e):xs)) = c*(n^e) + (evaluaPolinomio n (P xs))  

sacarListaMonomios::Polinomio->[Monomio]
sacarListaMonomios (P ms) = ms 

insertarMonomio::Monomio->Polinomio->Polinomio
insertarMonomio (M m) (P []) = (P [(M m)])
insertarMonomio (M mx) (P ((M my):mys)) = if ((M mx) < (M my))
                                                then P((M my):(sacarListaMonomios (insertarMonomio (M mx) (P mys))))
                                                else (P ((M mx):((M my):mys)))

eliminaMonomio::Int-> Polinomio -> Polinomio
eliminaMonomio n (P []) = (P [])
eliminaMonomio n (P ((M (c,e)):ms)) = if n == e then (P ms) else (P((M(c,e)):(sacarListaMonomios(eliminaMonomio n (P ms)))))

