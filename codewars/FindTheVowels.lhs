Find the Vowels  UNRESOLVED
--------------------------------------------------------------------------------
We want to know the index of the vowels in a given word, for exmaple, there  are
two vowels in the word super (the second and fourth letters). So given a string,
"super", we should return a list of [2, 4].

Some more examples:
--------------------------------------------------------------------------------
Mmm     ⇒ []
Super   ⇒ [2,4]
Apple   ⇒ [1,5]
YoMama  ⇒ [1,2,4,6]

Note: Vowels in this context refers to English language vowels: a e i o u y
Note: This is indexed from [1..n]. Not zero indexed:

> module VowelIndices where
>
> import Data.List
>
> vowelIndices :: String -> [Integer]
> vowelIndices ""     = []
> vowelIndices (x:xs) = undefined


Basicamente:
1. Si la cadena es vacia devolver lista vacia.
2. Si el primer elemento de la cadena es vocal, agregar 1 a la lista.
3. Si el segundo elemento de la cadena es vocal, agregar 2 a la lista.
4. Si el tercer elemento de la cadena es vocal, agregar 3 a la lista

  vowelIndices "Holayo"
     {applying vowelIndices}
= []     vowelIndices "olayo"
= [2]    vowelIndices "layo"
= [2]    vowelIndices "ayo"

> test :: String -> [Int]
> test string = [ (x `elemIndices` string) | x <- string, testear x ]
>               where
>               testear :: Char -> Bool
>               testear x | x `elem` ['a','e','i','o','u','y'] = True
>                         | otherwise                          = False 
