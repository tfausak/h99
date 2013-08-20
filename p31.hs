-- Determine whether a given integer number is prime.
isPrime :: Int -> Bool
isPrime n =
  let bound n = [1 .. floor . sqrt $ fromIntegral n]
  in [d | d <- bound n, rem n d == 0] == [1]
