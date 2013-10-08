-- Rotate a list N places to the left.
rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs n
  | n > 0 = rotate (tail xs ++ [head xs]) (n - 1)
  | n < 0 = rotate (last xs : init xs) (n + 1)
  | otherwise = xs
