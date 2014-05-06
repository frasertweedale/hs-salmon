module Salmon where

data Salmon = Salmon { name :: String }

instance Show Salmon where
  show (Salmon s) = s ++ " the Salmon"
