darVuelta::String -> String
darVuelta s = unwords(foldr (\y x -> ((reverse y):x) ) [] (words s))
 
frases::IO()
frases = do
    putStrLn("Introduce una frase")
    cadena <- getLine
    let vuelta = (darVuelta cadena)
    putStrLn (vuelta)
    if ((length vuelta) == 0) then
        putStrLn("Nos paramos")
    else do
        frases