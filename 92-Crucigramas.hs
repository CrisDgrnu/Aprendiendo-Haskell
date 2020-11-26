crucigramas::Char->Int -> Int -> [String] -> [String]
crucigramas c pos len xs = [ x | x<-xs , length x == len, (x !! pos) == c]