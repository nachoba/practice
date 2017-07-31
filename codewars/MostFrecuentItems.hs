-- Find Count of Most Frequent Items in an Array
-- ---------------------------------------------
-- http://www.codewars.com/kata/56582133c932d8239900002e/train/haskell
--
-- Write a program to find the count of the most frequen item of an array.Assume
-- that input is an array of integers.
-- For example:
-- mostFrequent [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3] => 5
--
-- Most frequent number in the example array is -1. It occurs 5 times in the in-
-- put array, so the answer is 5.

import Data.List

lista :: [Int]
lista = [3, -1, -1, -1, 2, 3, -1, 3, -1, 2, 4, 9, 3]


mostFrequentItemCount :: [Int] -> Int
mostFrequentItemCount [] = 0
mostFrequentItemCount xs = maximum [ (\x -> length . filter (==x)) x xs | x <- xs]


-- Count occurrencies of x in a given list
count :: Eq a => a -> [a] -> Int
count x = length . filter (==x)

-- Remove duplicate elements from a list
rmdups :: (Ord a) => [a] -> [a]
rmdups = map head . group . sort

-- The most voted solution in Codewars
mostFrequent :: [Int] -> Int
mostFrequent = maximum . (0 :) . map length . group . sort

