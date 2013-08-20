-- Replicate the elements of a list a given number of times.
repli :: Int -> [a] -> [a]
repli n xs =
    let repli' n x = [x | _ <- [1..n]]
    in concat [repli' n x | x <- xs]
