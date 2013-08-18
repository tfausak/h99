-- Pack consecutive duplicates of list elements into sublists.
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) =
    let rest = pack xs
    in if x == head xs then (x : (head rest)) : (tail rest) else [x] : rest

-- Run-length encoding of a list.
encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = [(length x, head x) | x <- pack xs]
