Write a function called "alternateCase :: String → String"  which  switch  every
letter in a string from upper to lower and from lower to upper. For example:

Prelude> alternateCase "Hello Wordl"
"hELLO wORLD

> module AlternateCase where
>
> import Data.Char (toUpper, toLower, isUpper, isLower)
>
> alternateCase :: String -> String
> alternateCase  [] = []
> alternateCase s   = map check s
>     where
>     check s | isLower s       = toUpper s
>             | otherwise       = toLower s

This is one of the best solutions given in codewars:

> alternateCase' :: String -> String
> alternateCase' = map (\x -> if isUpper x then toLower x else toUpper x)

