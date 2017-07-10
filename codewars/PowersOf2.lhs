Powers of 2

Write a function  "powersOfTwo" which will return list of all powers of 2 from 0
to n (where n is an exponent). For example:

n = 0  -> 2^0      -> [1]
n = 1  -> 2^0, 2^1 -> [1,2]


> module PowersOfTwo where
>
> powersOfTwo :: Int -> [Int]
> powersOfTwo n = map (2^) [0..n]

Using recursion


> powersOfTwo' :: Int -> [Int]
> powersOfTwo' 0 = [1]
> powersOfTwo' n = powersOfTwo' (n - 1) ++ [2 ^ n]
