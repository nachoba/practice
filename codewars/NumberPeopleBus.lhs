Number of people in the bus

There  is a bus  moving in the  city, and it  takes and drop some people in each 
bus stop.

You are provided with a list (or array) of integer arrays (or tuples).  Each in-
ger array has two items which represent number of people get into bus (The first
item) and number of people get off the bus (The second item) in a bus stop.

Your task is to  return number of people who are still in the bus after the last 
bus station (after the last array). Even though it is the last bus stop, the bus
is not  empty and some people are still in the bus, and they are probably sleep-
ing there.Take a look on the test cases. Please keep in mind that the test cases
ensure that the number of people in the bus is always >= 0.So the return integer
can't be negative. The second value in the first integer array is $0$, since the
bus is empty in the first bus stop.

> module Codewars.Kata.Bus where
>
> -- Testing lists
> number1 = [(10,0),(3,5),(5,8)]                     -- should be 5
> number2 = [(3,0),(9,1),(4,10),(12,2),(6,1),(7,10)] -- should be 17
> number3 = [(3,0),(9,1),(4,8),(12,2),(6,1),(7,8)]   -- should be 21
>
> number :: [(Integer, Integer)] -> Integer
> number []     = 0
> number (x:[]) = (fst x - snd x)
> number (x:xs) = (fst x - snd x) + number xs



A very interesting and expressive solution

> number' :: [(Integer, Integer)] -> Integer
> number' = sum . map (uncurry (-))

This example is very interesting.  First of all uncurry converts a curried func-
tion to a function on pairs. 

uncurry :: (a -> b -> c) -> (a, b) -> c

So, for example:

Prelude> uncurry (-) (3,4)
-1


So 'map (uncurry (-))' maps the 'uncurry (-)' to the list.

Prelude> map (uncurry (-)) number1
[10,-2,-3]

And then 'sum' adds up all the elements of the list:

Prelude> sum $ map (uncurry (-)) number1
5
