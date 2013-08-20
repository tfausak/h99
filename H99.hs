module H99
( Element(..)
, encodeModified
, pack
) where

-- Pack consecutive duplicates of list elements into sublists.
pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) =
    let rest = pack xs
    in if x == head xs then (x : head rest) : tail rest else [x] : rest

-- Modified run-length encoding.
data Element a = Single a | Multiple Int a
    deriving (Show)

encodeModified :: (Eq a) => [a] => [Element a]
encodeModified xs = [
    if length x == 1
    then Single (head x)
    else Multiple (length x) (head x) | x <- pack xs]
