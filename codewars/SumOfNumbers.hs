-- Sum of Numbers from 0 to N
-- --------------------------
--
-- https://www.codewars.com/kata/sum-of-numbers-from-0-to-n/train/haskell
--
-- We want to generate a function that computes the series starting from 0 and
-- ending until the given number following the sequence:
-- 0,1,3,6,10,15...
-- Which si created by:
-- 0, 0+1, 0+1+2, 0+1+2+3, 0+1+2+3+4,...
--
-- seq 6   = 0+1+2+3+4+5+6 = 21
-- seq -15 = -15<0
-- seq   0 = 0

sequenceSum :: Int -> String
sequenceSum x | x < 0     = show x ++ " < 0"
              | otherwise = readNumber x ++ show(sum[0..x])



-- Read a number
readNumber :: Int -> String
readNumber 0 = "0 = 0"
readNumber 1 = "0+1 = " 
readNumber x = readNumber (x -1) ++ "++" ++ show x

