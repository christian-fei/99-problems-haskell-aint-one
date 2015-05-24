module Lists (
  myLast
)
where

myLast :: [Int] -> Int
myLast xs = reverse xs !! 0
