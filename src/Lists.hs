module Lists where

myLast :: [Int] -> Int
myLast = first . reverse

myButLast :: [Int] -> Int
myButLast = first . drop 1 . reverse

elementAt :: [Int] -> Int -> Int
elementAt xs a = xs !! (a - 1)

first :: [Int] -> Int
first xs = xs !! 0
