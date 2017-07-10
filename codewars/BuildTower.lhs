Build Tower UNRESOLVED
--------------------------------------------------------------------------------
Build towers by the following given argument: the number of floors is an integer
and it is always greater than 0. For example:
            Prelude> buildTower 2
            " * "
            "***"
            Prelude> buildTower 6
            "     *     "
            "    ***    "
            "   *****   "
            "  *******  "
            " ********* "
            "***********"

 buildTower :: Int -> [String]

> repeatString :: Int -> Char -> [String]
> repeatString 0 _ = error "Integer should be greater than 0"
> repeatString 1 c = ["*"]
> repeatString n c = repeatString (n-1) ++ ["***"]
