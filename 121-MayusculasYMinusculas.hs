import Data.Char
import System.IO.Unsafe

mayusYMinus::IO()
mayusYMinus = do
    putStrLn ("Introduce tu nombre: ")
    nombre <- getLine
    let m = map (toUpper) nombre
    let m' = map (toLower) nombre
    putStrLn ("En mayusuclas: "++m)
    putStrLn ("En minusculas: " ++m')