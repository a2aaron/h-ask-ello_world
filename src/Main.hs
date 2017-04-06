module Main where

main :: IO ()
main = do print (isPrime 15485863)
          print [isPrime x | x <- [1 .. 100]]


a_list = [1, 2, 3]

a_list2 = [1..10]

a_big_list = [1..10000]

a_concated_list = a_list ++ a_list2

successor :: Integer -> Integer
successor x = x + 1

predecessor :: Integer -> Integer
predecessor x = x - 1

add :: Integer -> Integer -> Integer
add a 0 = a
add a b = add (successor a) (b - 1)

isPrime :: Integer -> Bool

isPrime 1 = False

-- foldr takes a function, an arguement, and a list and
-- applies the function to the argument and to the last element
-- it iterates backwards thru the list. Effectively, we do
-- True && element1 && element2 && element3 and so on
-- We also generate a list of Bools where the bool is (x being coprime to a)
-- where a iterates from 2 to (x - 1)
-- If all of these values are coprime then we know that x is prime
isPrime x = foldr (&&) True [x `coprimeTo` a | a <- [2..(x - 1)]]

coprimeTo a b = a `mod` b /= 0