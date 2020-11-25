repeticiones::[Int]->([Int],[Int])
repeticiones xs = foldl (\(r,n) x-> if (not (elem x r) && (not (elem x n))) 
                                    then (r,(x:n)) 
                                    else 
                                        if (elem x n) 
                                            then (x:r,(eliminar x n))
                                        else (r,n)) 
                                            ([],[]) xs

eliminar::Int->[Int]->[Int]
eliminar n (x:xs) = if (x==n) then xs else x:(eliminar n xs)