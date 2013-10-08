-- Remove the K'th element from a list.
removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (last l, (init l) ++ r) where
  (l, r) = splitAt n xs
