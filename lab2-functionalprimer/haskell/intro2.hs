module Intro2 where
-- test Comment
-- String algebra:
name = "Alice"
-- "if" has a special syntax but otherwise a typed version of Lisp's "if":

{- if name is not empty the result will be 'name' 
  else if name == "" the result will be no name -}
name2 = if name /= "" then name else "no name"

pname3 = print "Bob"

myprogram = print (1 + m)   -- compiler error: m undefined
m = 1                      -- unless this line is also present

-- sequencing several imperative programs:
prg1 = do
  print "hello " 
  print name  -- level of indentation is important

-- the same, but using algebra of imperative programs:
prg1' = sequence_ [print "hello ", print name]

-- one imperative program passing value to another:
{- Like scanner in java, user input -}
prg2 = do
  line <- getLine
  putStrLn ("you typed: " ++ line)

main =
  do
  putStrLn name -- like print, but only for strings
  -- putStrLn pname3 -- Couldn't match type ...; Expected type: String; Actual type: IO ()
  pname3 -- in Lisp: eval pname3
  myprogram; prg1; prg2 -- sequencing, like 3 lines


-- generic string conversion, using a Java-friendly name:
{- converts value to a string, and show value shows 
the value-}
toString value = show value

-- string concatenation:
greet1 = "hello " ++ name ++ (toString 123)
-- the same, but with the operator as a function (like Lisp):
greet2 = (++) "hello " name
-- concatenating more than 2 strings:
greet3 = concat ["hello ", name, toString 123]
