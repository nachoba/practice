Combining Functions in Haskell
--------------------------------------------------------------------------------
It is good Haskell style to  build up more  complex functions by  combining many
simple ones.
In this case we are going to use hailstone numbers: Start with any positive int-
eger (the initial seed)and obtain a sequence of numbers by following these rules

1. If the current number is even, divide it by two; else if it is odd,  multiply
   it by three and add one.
2. Repeat.


> module CombineFunctions where

> hailstone :: Integer -> Integer
> hailstone n | n `mod` 2 == 0  = n `div` 2
>             | otherwise       = 3 * n + 1
>

> hailstoneSeq :: Integer -> [Integer]
> hailstoneSeq 1 = [1]
> hailstoneSeq n = n : hailstoneSeq (hailstone n)

Prelude> hailstoneSeq 3
[3,10,5,16,8,4,2,1]
Prelude> hailstoneSeq 7
[7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]

Now we compute the length of a list of integers.

> intListLength :: [Integer] -> Integer
> intListLength []     = 0
> intListLength (x:xs) = 1 + intListLength xs

The number of hailstone steps needed to reach 1 from a given number

> hailstoneLen :: Integer -> Integer
> hailstoneLen n = intListLength (hailstoneSeq n) -1

> main :: IO ()
> main = 
>   print (hailstoneLen 5)


