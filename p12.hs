import H99 (pack)

-- Decode a run-length encoded list.
data Element a = Single a | Multiple Int a deriving (Show)
encodeModified :: (Eq a) => [a] => [Element a]
encodeModified xs = [if length x == 1 then Single (head x) else Multiple (length x) (head x) | x <- pack xs]

decodeModified :: (Eq a) => [Element a] -> [a]
decodeModified [] = []
decodeModified (Single x:xs) = x : decodeModified xs
decodeModified (Multiple n x:xs) = take n (repeat x) ++ decodeModified xs
