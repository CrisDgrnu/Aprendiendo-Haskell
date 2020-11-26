decimalABinario::Int -> [Int]
decimalABinario 0 = [0]
decimalABinario 1 = [1]
decimalABinario n = decimalABinario (n `div` 2) ++ [n `mod` 2]