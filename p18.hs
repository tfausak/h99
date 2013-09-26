-- Extract a slice from a list.
slice :: [a] -> Int -> Int -> [a]
slice [] _ _ = []
slice xs _ 0 = []
slice xs 0 k = head xs : slice (tail xs) 0 (k - 1)
slice xs i k = slice (tail xs) (i - 1) k

-- More succinctly...
slice' xs i k = take k $ drop i xs
