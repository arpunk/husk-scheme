{- |
Module      : Language.Scheme.Util
Copyright   : Justin Ethier
Licence     : MIT (see LICENSE in the distribution)

Maintainer  : github.com/justinethier
Stability   : experimental
Portability : portable

This module contains general-purpose utility functions
-}

module Language.Scheme.Util
    ( escapeBackslashes
    , strip
    ) where

-- |A utility function to escape backslashes in the given string
escapeBackslashes :: String -> String
escapeBackslashes s = foldr step [] s
  where step x xs  | x == '\\'  = '\\' : '\\' : xs
                   | otherwise =  x : xs 

-- | Remove leading/trailing white space from a string; based on corresponding 
--   Python function. Code taken from: 
--
--   http://gimbo.org.uk/blog/2007/04/20/splitting-a-string-in-haskell/
strip :: String -> String
strip s = dropWhile ws $ reverse $ dropWhile ws $ reverse s
    where ws = (`elem` [' ', '\n', '\t', '\r'])
