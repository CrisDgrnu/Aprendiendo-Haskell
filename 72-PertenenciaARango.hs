enRangoC::Int -> Int -> [Int] -> [Int]
enRangoC min max xs = [x | x<-xs, x<=max && x>=min]