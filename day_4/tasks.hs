-- Generating primes:

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

primes :: Int -> [Int]
primes n = [x | x <- [2..n], prime x]

-- Faster version
allprimes :: [Int]
allprimes = sieve [2..]

sieve :: [Int] -> [Int]
sieve (p:xs) = p : sieve [x | x<- xs, x `mod` p/=0]

pair :: [a] -> [(a, a)]
pair xs = zip xs (tail xs)

sorted :: Ord a => [a] -> Bool
sorted xs = and [x<=y | (x,y) <- pair xs]

positions :: Eq a => a -> [a] -> [Int]
positions x xs = 
    [i | (x',i) <- zip xs [0..], x == x']

count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x == x']

pairs :: a -> [(a, a, a)]
pairs xs = zip xs [1..xs]

pyths :: Int -> [(Int, Int, Int)]
pyths xs = [x^2 + y^2 == z^2 | (x, y, z)<- pairs xs]