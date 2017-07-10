-- ShortestWord.hs
-- From CodeWars - 7kyu
-- Given a string of words, return the length of the shortest words(s).
-- Strings will never be empty and you do not need to account for
-- different data types.

module FindShortest where

s1 = "bitcoint take over the world maybe who knows perhaps"
s2 = "turns out random test cases are easier than writing out basic ones"
s3 = "wann be there 4 U"

length' :: [a] -> Integer
length' []     = 0
length' (x:[]) = 1
length' (x:xs) = 1 + length' xs

find_shortest :: String -> Integer
find_shortest string = minimum $ map length' (words string) 

-- The best solution in codewars is pretty similar.
-- Only that it solves the length' problem using 'fromIntegral'
findShortest :: String -> Integer
findShortest = fromIntegral . minimum . map length . words




main :: IO ()
main = do
    print( map find_shortest[s1, s2, s3])
