module Lists where

myLast :: [Int] -> Int
myLast = first . reverse

myButLast :: [Int] -> Int
myButLast = first . drop 1 . reverse

elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i - 1)

myLength :: [a] -> Int
myLength xs = 0

first :: [Int] -> Int
first xs = xs !! 0
