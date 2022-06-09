safetail :: [a] -> [a]

null :: [a] -> Bool

#(a)
safetail x = if null x then 
                []
                else 
                    tail x

#(b)
safetail x | null x        = []
           | otherwise     = tail xs

#(c) Pattern Maching
safetail []    = []
safetail (_:x) = x


(||) :: Bool -> Bool -> Bool
True  || _     = True
-     || True  = True
False || False = False

False || b = b
True  || _ = True

if x == True && y == True then True 
    else False 

if True && x then x 
    else False