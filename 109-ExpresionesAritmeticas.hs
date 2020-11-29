data Expr = Valor Int | Expr :+: Expr |  Expr :-: Expr |  Expr :*: Expr 

expresion = ((Valor 3) :*: (((Valor 1) :-: ((Valor 2) :+: (Valor 3))) :*: (Valor 10)))

calcular::Expr->Int
calcular (Valor x) = x
calcular (x :+: y) = (calcular x) + (calcular y)
calcular (x :-: y) = (calcular x) - (calcular y)
calcular (x :*: y) = (calcular x) * (calcular y)

calcularConstantes::Expr->Int
calcularConstantes (Valor x) = 1
calcularConstantes (x :+: y) = (calcularConstantes x) + (calcularConstantes y)
calcularConstantes (x :-: y) = (calcularConstantes x) + (calcularConstantes y)
calcularConstantes (x :*: y) = (calcularConstantes x) + (calcularConstantes y)

