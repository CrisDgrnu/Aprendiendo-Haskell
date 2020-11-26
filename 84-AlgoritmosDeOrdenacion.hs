inserccion::[Int] -> [Int]
inserccion [] = []
inserccion (x:xs) = insertarOrdenado x  (inserccion xs)

insertarOrdenado::Int -> [Int] -> [Int]
insertarOrdenado x [] = [x]
insertarOrdenado x (y:ys) = if x<y then (x:y:ys) else (y:(insertarOrdenado x ys))

mergeSort::[Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort firstHalf) (mergeSort secondHalf)
                where firstHalf = take ((length xs) `div` 2) xs
                      secondHalf = drop ((length xs) `div` 2) xs

merge::[Int] -> [Int] -> [Int]
merge [] xs = xs
merge xs [] = xs
merge (x:xs) (y:ys) = if x<y then (x:merge xs (y:ys)) else (y:merge (x:xs) ys)
