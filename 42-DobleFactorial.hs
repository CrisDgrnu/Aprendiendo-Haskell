dobleFactorial::Int-> Int
dobleFactorial 0 = 1
dobleFactorial 1 = 1
dobleFactorial n = n*dobleFactorial(n-2)