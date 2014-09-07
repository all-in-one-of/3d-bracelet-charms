{-# LANGUAGE ExtendedDefaultRules, OverloadedStrings #-}
import qualified Data.ByteString.Lazy.Char8 as B
import Data.List

splitEvery n = takeWhile (not . null) . unfoldr (Just . splitAt n)
