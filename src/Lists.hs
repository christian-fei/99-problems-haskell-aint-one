module Lists where

myLast :: [Int] -> Int
myLast = first . reverse

myButLast :: [Int] -> Int
myButLast = first . drop 1 . reverse

elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i - 1)

first :: [Int] -> Int
first xs = xs !! 0
