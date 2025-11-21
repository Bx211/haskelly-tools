module Main where


import Haskelly


main :: IO ()
main = do
print (safeRead "123" :: Maybe Int)
print (splitOn '-' "a-b-c-d")
print (uniq [3,1,2,3,1,4])
