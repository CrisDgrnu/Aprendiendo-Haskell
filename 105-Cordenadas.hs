data Cordenada = Norte | Sur | Este | Oeste deriving Show
data Punto = P Float Float deriving Show

mover::Cordenada -> Punto -> Punto
mover Norte (P x y) = (P x (y+1))
mover Sur (P x y) = (P x (y-1))
mover Este (P x y) = (P (x+1) y)
mover Oeste (P x y) = (P (x-1) y)

masAlSur::Punto->Punto->Punto
masAlSur (P x1 y1) (P x2 y2) = if (y1<y2) then (P x1 y1) else (P x2 y2)

distancia::Punto->Punto->Float
distancia (P x1 y1) (P x2 y2) = sqrt((x2-x1)^2 + (y2-y1)^2)

camino::Punto->[Cordenada]->[Punto]
camino (P x y) [] = []
camino (P x y) (z:zs) = (nuevoPunto:(camino nuevoPunto zs))
                        where nuevoPunto = (mover z (P x y))