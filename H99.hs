module H99
( pack
) where

-- Pack consecutive duplicates of list elements into sublists.
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) =
    let rest = pack xs
    in if x == head xs then (x : head rest) : tail rest else [x] : rest
