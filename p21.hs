-- Insert an element at a given position into a list.

insertAt :: a -> [a] -> Int -> [a]
insertAt x ys n
    | null ys = [x]
    | n <= 1 = x : ys
    | otherwise = head ys : insertAt x (tail ys) (n - 1)
