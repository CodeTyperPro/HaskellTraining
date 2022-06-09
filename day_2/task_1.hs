1. What are the types of the following values?

['a', 'b', 'c'] => List Of Char

('a', 'b', 'c') => Tuple

[(False, '0'), (True, '1')] => List of tuples Bool, Char

([False, True], ['0', '1']) => Tuples of List True and Char

[tail, init, reverse] => List of unique type

2. Wha are the types of the following functions?

second xs = head (tails xs) => Depends on xs list, polimorphisc type

swap (x,y) = (y,x) => tuples

pair x y = (x,y) => tuple

palindrome xs = reserse xs == xs => Boolean

twice f x = f (f x) =>Recursive function, error type

3. Check your answers using GHCi.