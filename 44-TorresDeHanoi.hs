numPasosHanoi::Int -> Int
numPasosHanoi 0 = 0
numPasosHanoi 1 = 1
numPasosHanoi n = 1+ 2 *numPasosHanoi (n-1)