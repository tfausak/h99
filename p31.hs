-- Determine whether a given integer number is prime.
isPrime :: Int -> Bool
isPrime n
    | n < 2          = False -- Integers less than 2 are not prime.
    | n < 4          = True  -- 2 and 3 are prime.
    | even n         = False -- Even integers are composite.
    | n < 9          = True  -- 5 and 7 are prime.
    | n `rem` 3 == 0 = False -- Multiples of 3 are composite.
    -- All remaining primes have the form 6k±1.
    | otherwise = not $ any (isComposite n) [5, 11 .. limit n] where
        isComposite n d = n `rem` d == 0 || n `rem` (d + 2) == 0
        limit = floor . sqrt . fromIntegral
