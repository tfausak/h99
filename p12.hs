import H99 (Element(..))

-- Decode a run-length encoded list.
decodeModified :: (Eq a) => [Element a] -> [a]
decodeModified [] = []
decodeModified (Single x:xs) = x : decodeModified xs
decodeModified (Multiple n x:xs) = replicate n x ++ decodeModified xs
