module Haskelly
( safeRead
, splitOn
, uniq
) where


import Text.Read (readMaybe)
import Data.List (group, sort)


safeRead :: Read a => String -> Maybe a
safeRead = readMaybe


splitOn :: Char -> String -> [String]
splitOn _ [] = []
splitOn delim str =
let (chunk, rest) = break (== delim) str
in case rest of
[] -> [chunk]
(_:xs) -> chunk : splitOn delim xs


uniq :: Ord a => [a] -> [a]
uniq = map head . group . sort
