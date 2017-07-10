Numbling

This time no story, no theory. The examples below show you how to write function
 "accum". For example:

accum "abcd"       => "A-Bb-Ccc-Dddd"
accum "RqaEzty"    => "R-Qq-Aaa-Eeee-Zzzzz-Ttttttt-Yyyyyyy"
accum "cwAt"       => "C-Ww-Aaa-Tttt"

The parameter of "accum" is a string which includes only letters from ['a'..'z']
and ['A'..'Z'].

> module Codewars.G964.Accumule where
>
> import Data.Char

Notes:
1. we should check the number of elements in the list: "length".
2. we should take the first element "head" and capitalise it, and add a "-" cha-
   racter.
3. we should take the second element, capitalise the first character, add a se-
   cond character lower case, add a "-" character
4. repeat since we reach the end.

string "test"                => "string"
legnth string                => 4
toUpper (string !! 4) ++ (take 4 (repeat (string !! 4))) : "-"  => "S-"

