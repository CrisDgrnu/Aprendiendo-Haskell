data Fecha = F {
    dia::Int,
    mes::Int,
    año::Int
}

f1 = (F 10 12 2020)
f2 = (F 1 11 2020)
f3 = (F 1 11 2019)

instance Show Fecha where
    show (F dia mes año) = show dia ++ "/" ++ show mes ++ "/" ++ show año

instance Eq Fecha where
    (F d1 m1 a1) == (F d2 m2 a2) = (d1 == d2) && (m1 == m2) && (a1 == a2)

instance Ord Fecha where
    (F d1 m1 a1) <= (F d2 m2 a2) = (a1<=a2) || (a1<=a2 && m1<=m2) || (d1<=d2 && m1<=m2 && a1<=a2)

fechasIguales::Fecha->Fecha->Bool
fechasIguales (F d1 m1 a1) (F d2 m2 a2) = (F d1 m1 a1) == (F d2 m2 a2)

quicksort::Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =  (quicksort lesser) ++ [x] ++ (quicksort greater)
                where 
                        lesser = filter (< x) xs
                        greater = filter (>= x) xs
