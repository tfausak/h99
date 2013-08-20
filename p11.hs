import H99 (pack)

-- Modified run-length encoding.
data Element a = Single a | Multiple Int a deriving (Show)
encodeModified :: (Eq a) => [a] => [Element a]
encodeModified xs = [if length x == 1 then Single (head x) else Multiple (length x) (head x) | x <- pack xs]
