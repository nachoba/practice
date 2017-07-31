-- No Oddities Here
-- ----------------
-- http://www.codewars.com/kata/no-oddities-here/train/haskell
--
-- Write a small function that returns the values of an array that are not odd.
-- All values in the array will be integers.  Return the good values in the or-
-- der they are given.
--
-- noOdds :: Integral n => [n] -> [n]
-- noOdds [1,3,5]   => []
-- noOdds [1..5]    => [2,4]

noOdds :: Integral n => [n] -> [n]
noOdds = filter even

-- My first attempt was to include a match like:
-- noOdds [] = []
-- But then I realized that this was not necessary.
--
-- Close inspection of those solutions provided in Codewars make me notice that
-- as the 'xs' are on both sides, they can be canceled. Making:
-- noOdds xs = filter even xs
-- noOdds = filter even
