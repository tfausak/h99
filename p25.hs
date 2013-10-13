import Data.List (permutations)
import System.Random (randomRIO)

-- Generate a random permutation of the elements of a list.
rnd_permu :: [a] -> IO [a]
rnd_permu xs = do
    index <- randomRIO (0, length ps - 1)
    return $ ps !! index where
        ps = permutations xs
