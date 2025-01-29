module Main where

main =
    do
    print (myFunc1 5)
    print (myFunc2 10)
    print (thirdFunc)

{- functions and variables in haskell need to be
lower case -}

myFunc1 x = x*10
myFunc2 x = x*2
thirdFunc = "Hello, this is 3rd Func"