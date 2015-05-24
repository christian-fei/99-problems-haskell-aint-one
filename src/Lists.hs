module Lists where

myLast :: [a] -> a
myLast = first . reverse

myButLast :: [a] -> a
myButLast = first . drop 1 . reverse

elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i - 1)

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

first :: [a] -> a
first xs = xs !! 0
