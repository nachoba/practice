-- Functional Addition
-- -------------------
--
-- https://www.codewars.com/kata/538835ae443aae6e03000547/train/haskell
--
-- Create a function add n, which returns a function that always adds n to any
-- number, For instance:
-- addOne   = add 1
-- addOne 3 = 4

add :: Num a => a -> a -> a
add n = \x -> x + n

-- The best solution in codewars is
add' :: Num a => a -> a -> a
add' = (+)


