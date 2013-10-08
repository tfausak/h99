-- Split a list into two parts; the length of the first part is given.
split :: [a] -> Int -> ([a], [a])
split [] _ = ([], [])
split a@(x:xs) n
  | n > 0 = let (l, r) = split xs (n - 1) in (x:l, r)
  | otherwise = ([], a)
