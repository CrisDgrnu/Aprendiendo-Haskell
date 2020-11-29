data Temperatura = Celsius Float | Farenhait Float deriving Show
data Orden = Encender | Apagar deriving Show
data Habitacion = Salon | Cocina | Baño deriving Show
convert::Temperatura -> Temperatura
convert (Celsius t) = (Farenhait (t * (9.0 / 5.0) + 32.0))
convert (Farenhait t) = (Celsius ((t-32.0) * (5.0 / 9.0))) 



action::Temperatura->Orden
action (Celsius t) = if (t > 28.0) then Apagar else Encender
action (Farenhait t) = action (convert (Farenhait t))