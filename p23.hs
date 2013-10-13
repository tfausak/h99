import Control.Monad (mapM)
import System.Random (randomRIO)

-- Extract a given number of randomly selected elements from a list.
rnd_select :: [a] -> Int -> IO [a]
rnd_select xs n = mapM f [1 .. n] where
    f = const $ r xs
    r xs = do
        index <- randomRIO (0, length xs - 1)
        return (xs !! index)
