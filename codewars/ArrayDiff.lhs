Array Diff

Your goal in this kata is to implement a difference function, which
subtracts one list form another.
It should remove all values from list a, which are present in list b.

Prelude> difference [1,2] [1]
[2]

If a value is present in b, all of its occurrences must be removed
from the other:

Prelude> difference [1,2,2,2,3] [2]
[1,3]

> module Difference where
>
> difference :: Eq a => [a] -> [a] -> [a]
> difference a  []                           = a  
> difference []  b                           = []
> difference (a:[]) (b:[]) | a == b          = []
>                          | otherwise       = [a]
> difference (a:as) (b:bs) | a `elem` (b:bs) = difference as (b:bs) 
>                          | otherwise       = a : difference as (b:bs)

The best solution from codewars

> difference' :: Eq a => [a] -> [a] -> [a]
> difference' a b = filter (`notElem` b) a

