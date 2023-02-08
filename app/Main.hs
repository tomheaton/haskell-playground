module Main where

import qualified MyLib (someFunc)

factorial :: Integer -> Integer
factorial n
  | n <= 0 = 1
  | otherwise = n * factorial (n - 1)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc

  let result = factorial 10
  putStrLn $ "Factorial of 10 is " ++ show result
