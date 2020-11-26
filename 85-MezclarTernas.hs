mezclarTernas::[a] -> [b] -> [(a,b,b)]
mezclarTernas [] _ = []
mezclarTernas _ [] = []
mezclarTernas _ [x] = []
mezclarTernas (x:xs) (y:z:zs) = [(x,y,z)] ++ mezclarTernas xs zs
