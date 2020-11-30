sumarOrestar::IO()
sumarOrestar = do
    putStrLn ("Introduce un numero: ")
    n1 <- getLine
    putStrLn ("Introduce otr numero: ")
    n2 <- getLine
    putStrLn ("¿Quieres restar o sumar? (r/s)")
    ope <- getChar

    let n1Int = ((read n1)::Int)
    let n2Int = ((read n2)::Int)

    case ope of
        's' -> putStrLn (show(n1Int+n2Int))
        'r' -> putStrLn (show(n1Int-n2Int))
        _ -> do
            putStrLn("No tengo esa opcion")
            sumarOrestar