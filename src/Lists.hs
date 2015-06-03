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

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome xs  = (head xs) == (last xs) && (isPalindrome $ init $ tail xs)

--myFlatten :: [a] -> [a]
--myFlatten xs = xs

myCompress :: Eq a => [a] -> [a]
myCompress [] = []
myCompress (x:xs) = [x] ++ (myCompress (dropWhile (==x) xs))

myPack :: Eq a => [a] -> [[a]]
myPack [] = []
myPack (x:xs) = (x : takeWhile (==x) xs) : (myPack (dropWhile (==x) xs))

myEncode :: Eq a => [a] -> [(Int,a)]
myEncode [] = []
myEncode list@(x:xs) = [(count, x)] ++ myEncode rest
  where rest = dropWhile (==x) xs
        count = length (takeWhile (==x) list)

myEncode (x:xs) = [(1,x)]

first :: [a] -> a
first xs = xs !! 0
