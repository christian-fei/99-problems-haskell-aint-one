module Lists where

myLast :: [Int] -> Int
myLast = first . reverse

myButLast :: [Int] -> Int
myButLast = first . drop 1 . reverse

first :: [Int] -> Int
first xs = xs !! 0
