-- Create a list containing all integers within a given range.
range :: Int -> Int -> [Int]
range x y
    | x > y = []
    | otherwise = x : range (x + 1) y
