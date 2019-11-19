{- Haskell Implementation of sponge bob text formatter -}

import Data.Char
import System.Environment

mockString :: String -> String
mockString [] = []
mockString [x] = x : []
mockString (x:y:xs) =  toLower x : toUpper y : mockString xs

main :: IO [()] 
main = do
    args <- getArgs
    putStr "\n"
    mapM putStr ( map (\x -> x ++ [' ']) (map mockString args))
