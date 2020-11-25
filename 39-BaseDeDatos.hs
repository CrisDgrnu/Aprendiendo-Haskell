personas :: [(String,String,Int,Int)]
personas = [("Cervantes","Literatura",1547,1616),
            ("Velazquez","Pintura",1599,1660),
            ("Picasso","Pintura",1881,1973),
            ("Beethoven","Musica",1770,1823),
            ("Poincare","Ciencia",1854,1912),
            ("Quevedo","Literatura",1580,1654),
            ("Goya","Pintura",1746,1828),
            ("Einstein","Ciencia",1879,1955),
            ("Mozart","Musica",1756,1791),
            ("Botticelli","Pintura",1445,1510),
            ("Borromini","Arquitectura",1599,1667),
            ("Bach","Musica",1685,1750)]

nombres::[(String,String,Int,Int)] -> [String]
nombres bd = [n | (n,_,_,_) <- bd]

musicos::[(String,String,Int,Int)] -> [String]
musicos bd = [n | (n,p,_,_) <- bd, p == "Musica"]

seleccion::[(String,String,Int,Int)] -> String -> [String]
seleccion bd prof = [n | (n,p,_,_) <- bd, p == prof]

musicos'::[(String,String,Int,Int)] -> [String]
musicos' bd = seleccion bd "Musica"

vivas::[(String,String,Int,Int)] -> Int -> [String]
vivas bd a = [n | (n,_,i,f) <- bd, i<=a && a<=f]