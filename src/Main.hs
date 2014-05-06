import Pipes
import Pipes.Core

import Salmon

sammy :: Salmon
sammy = Salmon "Sammy"

riverMouth :: Monad m => Salmon -> Proxy Salmon a y' y m a
riverMouth = request

spawningPlace :: Salmon -> Proxy x' x Salmon a IO ()
spawningPlace salmon = do
  lift $ putStrLn $ show salmon ++
    " floats upstream, spawns, and in a couple of days, dies :("
  return ()

main :: IO ()
main = runEffect $ (spawningPlace >+> riverMouth) sammy
