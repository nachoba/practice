-- Write a method that takes an array of consecutive (increasing) letters as input
-- and that returns the missing letter in the array.

-- You will always get a valid array. And it will be always exactly one letter be missing. 
-- The length of the array will always be at least 2. 
-- The array will always contain letters in only one case. 
-- Use the English alphabet with 26 letters!



module MissingLetter where

test1 = ['a', 'b', 'c', 'd', 'f']
test2 = ['O', 'P', 'R', 'S']

findMissingLetter :: [Char] -> Char
findMissingLetter cs | null cs         = error "empty list!"
                     | (length cs) < 2 = error "list should have at least two elements"
                     | otherwise       = checkList cs [head cs..head $ reverse cs]
                     where
                     checkList :: [Char] -> [Char] -> Char
                     checkList lista listb | head lista /= head listb = head listb
                                           | otherwise                = checkList (tail lista) (tail listb)

-- A better solution found in CodeWars
findMissingLetter' :: [Char] -> Char
findMissingLetter' (x:xs) | head xs == succ x  = findMissingLetter' xs
                          | otherwise          = succ x


main :: IO ()
main = do
    putStrLn "Using findMissingLetter"
    print $ findMissingLetter test1
    print $ findMissingLetter test2
    putStrLn "Using findMissingLetter'"
    print $ findMissingLetter' test1
    print $ findMissingLetter' test2

