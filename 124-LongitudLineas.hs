lineas::IO()
lineas = do
    putStrLn("Introduce lineas y te dire su longitud")
    line <- getLine
    let nl = (length line)
    if nl == 0 then
        putStrLn ("Numero de lineas: 0")
    else do
        putStrLn ("Numero de lineas: "++ (show nl))
        lineas