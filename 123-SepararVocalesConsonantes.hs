separar::String -> (String,String)
separar xs = foldl (\ (v,c) y -> if (esVocal y) then ((y:v),c) else (v,(y:v)) ) ([],[]) xs

esVocal::Char->Bool
esVocal c = (c == 'a') || (c == 'e') || (c == 'o') || (c == 'u') || (c == 'i')

archivos::IO()
archivos = do
    putStrLn("Inserte un fichero de entrada")
    input <- getLine
    putStrLn("Inserte un fichero de salida")
    output <- getLine
    cadena <- readFile input
    let (vocal,otros) = separar cadena
    writeFile output vocal
    appendFile output otros