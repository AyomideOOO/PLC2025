module Intro1 where

-- define named constants:
r1 = 1

r2 = b^2 + 1/b 
where b = 2.0

-- define a function:

{- diff works out the difference 
and returns value, the value returned is always positive -}
diff a b = abs (a - b)

r3 = diff (diff a a) a  
where a = 1

r4 = diff (diff a b) b  
where a = 1; b = 1

-- lists by enumeration
r5 = [1,3,4,1]
r6 = [1..5]

inc n = n + 1


{- map applies a funtion to each list element,
returns a new list, without modifying the original -}
r7 = map inc [1..3]
r8 = map (diff 2) [1..3] 
r9 = map sqrt [1..3]


{- zip combines the first set and the second set into
tuples, the first set having all the first values
in each tuple and the second set having the second 
values -}

r10 = zip [1..3] (map sqrt [1..3])
r11 = zip [1..3] (map sqrt [1..2])

r12 = print [1..3]

main :: IO ()
main = pure ()