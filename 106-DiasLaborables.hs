data Dias = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo deriving Show

laborables::Dias->Bool
laborables Sabado = False
laborables Domingo = False
laborables _ = True