module Lists where

myLast :: [Int] -> Int
myLast = first . reverse

myButLast :: [Int] -> Int
myButLast = first . drop 1 . reverse

elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i - 1)

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

first :: [Int] -> Int
first xs = xs !! 0
