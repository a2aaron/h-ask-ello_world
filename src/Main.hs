module Main where

main :: IO ()
main = do print (successor (add 54 4))
          print (add 100 (predecessor 100))


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

