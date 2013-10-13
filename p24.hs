import Control.Monad (mapM)
import System.Random (randomRIO)

-- Lotto: Draw N different random numbers from the set 1..M.
diff_select :: Int -> Int -> IO [Int]
diff_select n m = mapM f [1 .. n] where
    f = const $ randomRIO (1, m)
