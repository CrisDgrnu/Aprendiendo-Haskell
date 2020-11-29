data Monedas = Euro Float | Dolar Float deriving Show

convert::Monedas->Monedas
convert (Euro x) = (Dolar (x / 1.14))
convert (Dolar x) = (Euro (x * 1.14))