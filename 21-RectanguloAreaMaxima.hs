mayorRect::(Int,Int) -> (Int,Int) -> (Int,Int)
mayorRect (x1,y1) (x2,y2) =  if x1*y1 >= x2*y2 then (x1,y1) else (x2,y2)