-- Find the K'th element of a list. The first element in the list is number 1.
elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (x:xs) n = elementAt xs (n - 1)
