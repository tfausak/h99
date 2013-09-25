-- Drop every N'th element from a list.
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = map g $ filter f $ zip [1..] xs where
    f (i, _) = i `rem` n /= 0
    g (_, x) = x
