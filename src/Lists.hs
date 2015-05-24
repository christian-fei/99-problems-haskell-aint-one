module Lists where

myLast :: [Int] -> Int
myLast xs = reverse xs !! 0

myButLast :: [Int] -> Int
myButLast xs = (drop 1 $ reverse xs) !! 0
