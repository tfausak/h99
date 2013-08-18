import H99 (pack)

-- Run-length encoding of a list.
encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = [(length x, head x) | x <- pack xs]
