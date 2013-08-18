-- Eliminate consecutive duplicates of list elements.
compress :: (Eq a) => [a] -> [a]
compress [] = []
compress (x:[]) = [x]
compress (x:y:ys) =
    let rest = compress (y : ys)
    in if x == y then rest else x : rest
