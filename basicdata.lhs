Basic Datatypes
---------------

Data declaration:

> data Person = Male | Female
>               deriving Show

Person is the "type constructor" for datatype Person. This is what shows in type
signatures. Male & Female are "data constructors". And the pipe | is the logical
disjunction "or".

So basically, an expression of type Person evaluates either to Male or Female.

Now let's define some functions over our newly created datatype.


> getTrans :: Person -> Person
> getTrans Male = Female
> getTrans    _ = Male

So if we do something like:
                 Prelude> print $ getTrans Male
                 Female

If we query our new datatype:
                 Prelude> :info Person
                 data Person = Male | Female

And if we query the getTrans Function:
                 getTrans :: Person → Person

Also a data declaration can have some arguemnts:

> type Name = String
> data Pets = Cat Name | Dog Name | Fish
>             deriving Show


