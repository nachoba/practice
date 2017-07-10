Vowel Count

Return the number -count- of vowels in a given string. Vowels for this kata are:
"a e i o u"

> module VowelCount where
>
> getCount :: String -> Int
> getCount string = length (getVowel string)
>
> getVowel :: String -> String
> getVowel "" = ""
> getVowel (chr:restString) | chr `elem` vowel = chr : getVowel restString
>                           | otherwise        =       getVowel restString
>                           where
>                           vowel = ['a', 'e', 'i', 'o', 'u']

This is the best solution for this kata:

> getCount' :: String -> Int
> getCount' = length . filter (`elem` "aeiou")

