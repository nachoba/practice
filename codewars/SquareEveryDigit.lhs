Explore Every Digit

In this kata, you are asked to square every digit of a number.

Testing Code:

> module SquareEveryDigit where
>
> import Data.Char
>
> squareDigit :: Int -> Int
> squareDigit digit
>      | digit <  (-1)    = error "Should be a positive integer"
>      | digit == (-1)    = (-1)
>      | otherwise        = toInt2 (concatDigit( getDigit (show digit)))
>      where
>      getDigit :: String -> [Int]
>      getDigit (x:[]) = [read [(x)] ^ 2 :: Int]
>      getDigit (x:xs) = [read [(x)] ^ 2 :: Int] ++ getDigit xs
>
>      concatDigit :: [Int] -> String
>      concatDigit (x:[]) = show x
>      concatDigit (x:xs) = show x ++ concatDigit xs
>
>      toInt2 :: String -> Int
>      toInt2 string = read string :: Int

Testing Code

> num1 :: Int
> num1 = 9119
>
> num2 :: Int
> num2 = (-1)
>
> main :: IO ()
> main = print $ squareDigit num1
