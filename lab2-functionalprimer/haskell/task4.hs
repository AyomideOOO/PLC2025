ask :: String -> IO ()

ask prompt =
  do
  putStrLn prompt -- displays the prompt ("please say something")
  line <- getLine -- gets the line the user entered
  if line == "" -- if the line is empty, then
    then ask (prompt ++ "!") {- asks the user the prompt again
    while appending an explanation mark -}
    else if line == "quit" 
    then putStrLn("Quitting...")
    else putStrLn ("you said: " ++ reverse line)

main :: IO ()
main =
  do
  let prompt = "please say something" 
  ask prompt