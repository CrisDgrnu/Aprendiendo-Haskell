class Collection c where
    esVacia:: c a -> Bool
    insertar:: c a -> a -> c a
    primero:: c a -> a
    eliminar:: c a -> c a
    size:: c a -> Int

data Pila a = Pil [a] deriving Show
data Cola a = Col [a] deriving Show

instance Collection Cola where
    esVacia (Col c) = (length c == 0)
    insertar (Col c) e = (Col (e:c))
    primero (Col c) = (head c)
    eliminar (Col (c:cs)) = Col(cs)
    size (Col c) = (length c)

instance Collection Pila where
    esVacia (Pil p) = (length p == 0)
    insertar (Pil p) e =  (Pil (p ++ [e]))
    primero (Pil p) = (last p)
    eliminar (Pil p) = Pil (init p)
    size (Pil p) = (length p) 