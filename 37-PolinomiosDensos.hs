densos::[Int] -> [(Int,Int)]
densos p = reverse [(x,y) | (x,y)<- zip [0..(length p)] (reverse(p)),y/=0]