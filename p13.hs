import H99 (Element(..))

encode :: (Eq a, Integral b) => [a] -> [(b, a)]
encode = foldr f [] where
    f x [] = [(1, x)]
    f x (y@(n, e):ys)
        | x == e = (n + 1, x) : ys
        | otherwise = (1, x) : y : ys

encodeDirect :: (Eq a) => [a] -> [Element a]
encodeDirect = map f . encode where
    f (n, x)
        | n == 1 = Single x
        | otherwise = Multiple n x
