-- Eliminate consecutive duplicates of list elements.
compress :: (Eq a) => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs) =
    let rest = compress xs
    in if x == head xs then rest else x : rest
