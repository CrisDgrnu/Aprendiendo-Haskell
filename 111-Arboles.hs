data Arbol a = AV | Rama (Arbol a) a (Arbol a) deriving Show
 
a1 = (Rama (Rama ( Rama AV 12 AV) 49 (Rama (Rama AV 23 AV) 5 (Rama AV 13 AV))) 123 (Rama AV 10 AV))
a2 = (Rama (Rama (Rama AV 3 AV) 2 (Rama AV 4 AV)) 1 AV)

listaHojas::Arbol a -> [a]
listaHojas AV = []
listaHojas (Rama AV r AV) = [r]
listaHojas (Rama i r d) = (listaHojas i) ++ (listaHojas d)

numNodos::Arbol a -> Int
numNodos AV = 0
numNodos (Rama AV r AV) = 1
numNodos (Rama i r d) = 1 + (numNodos i) + (numNodos d)

numHojas::Arbol a -> Int
numHojas AV = 0
numHojas (Rama AV r AV) = 1
numHojas (Rama i r d) = (numHojas i) + (numHojas d)
--numHojas ar = length (listaHojas ar)


altura::Arbol a -> Int
altura AV = 0
altura (Rama AV r AV) = 1
altura (Rama i r d) = 1 + (max ((altura i)) ((altura d)))

inorden::Arbol a -> [a]
inorden AV = []
inorden (Rama AV r AV) = [r]
inorden (Rama i r d) = (inorden i) ++ [r] ++ (inorden d)

preorden::Arbol a -> [a]
preorden AV = []
preorden (Rama AV r AV) = [r]
preorden (Rama i r d) = r:(preorden i ++ preorden d)

postorden::Arbol a -> [a]
postorden AV = []
postorden (Rama AV r AV) = [r]
postorden (Rama i r d) = (postorden i) ++ (postorden d) ++ [r]

nivel::Eq a => Arbol a -> a -> Int
nivel AV _ = 0
nivel (Rama i r d) e = if e == r then 1 else 
    if (nivel i e) == (nivel d e) then -1 else max ((nivel i e)+1) ((nivel d e)+1)

hermanos::Eq a => Arbol a -> a -> a -> Bool
hermanos AV _ _ = False
hermanos (Rama AV r AV) _ _ = False
hermanos (Rama (Rama ii ri di) r AV) h1 h2 = hermanos (Rama ii ri di) h1 h2 
hermanos (Rama AV r (Rama id rd dd)) h1 h2 = hermanos (Rama id rd dd) h1 h2 
hermanos (Rama (Rama ii ri di) r (Rama id rd dd)) h1 h2 
            | ((ri == h1) && (rd == h2)) = True
            | ((rd == h1) && (ri == h2)) = True
            | otherwise = (hermanos (Rama ii ri di) h1 h2) || (hermanos (Rama id ri dd) h1 h2)

espejo::Arbol a -> Arbol a 
espejo AV = AV
espejo (Rama AV r AV) = (Rama AV r AV)
espejo (Rama i r d) =  (Rama (espejo d) r (espejo i))