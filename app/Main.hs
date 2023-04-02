module Main where

import qualified MyLib (someFunc)

factorial :: Integer -> Integer
factorial n
  | n <= 0 = 1
  | otherwise = n * factorial (n - 1)

addOne :: Int -> Int
addOne n = n + 1

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc

  let result = factorial 10
  putStrLn $ "Factorial of 10 is " ++ show result

  let result2 = addOne 10
  putStrLn $ "Add one to 10 is " ++ show result2

  let list = [1, 2, 3, 4, 5]
  let list2 = map addOne list
  putStrLn $ "List is " ++ show list


