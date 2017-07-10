H-99
99 Problems in Haskell

1 - Problems based on lists

> test1 = [1, 2, 3, 4]
> test2 = ['x', 'y', 'z', 'n', 'f']
> test3 = "Hello World!"

Find the last element of a list

> myLast :: [a] -> a
> myLast [] = error "empty list"
> myLast xs = head $ reverse xs


Find the length of a list

> myLength :: [a] -> Int
> myLength []     = 0
> myLength (x:xs) = 1 + myLength xs


Reverse a list

> myReverse :: [a] -> [a]
> myReverse (x:[])      = [] ++ [x]
> myReverse (x:xs)      = myReverse xs ++ [x]

