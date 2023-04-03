module Main where

import qualified MyLib (someFunc)

factorial :: Integer -> Integer
factorial n
  | n <= 0 = 1
  | otherwise = n * factorial (n - 1)

addOne :: Int -> Int
addOne n = n + 1

-- data Tree = Leaf | Node Tree Tree
data IntTree = Empty | Node Int IntTree IntTree deriving Show

size :: IntTree -> Int
size Empty = 0
size (Node x left right) = size left + size right + 1

total :: IntTree -> Int
total Empty = 0
total (Node x left right) = total left + total right + x

treemap :: (Int -> Int) -> IntTree -> IntTree
treemap f Empty = Empty
treemap f (Node x left right) = Node (f x) (treemap f left) (treemap f right)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc

  let result = factorial 10
  putStrLn $ "Factorial of 10 is " ++ show result

  let result2 = addOne 10
  putStrLn $ "Add one to 10 is " ++ show result2

  -- let tree = Node Leaf Leaf

  let list = [1, 2, 3, 4, 5]
  let list2 = map addOne list
  putStrLn $ "List is " ++ show list


