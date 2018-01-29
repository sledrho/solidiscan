-- test case for the Lexical analysis
s = "1 + 1 tester 1234 - 2000 ({test})"
d = "== || != !"

-- read function to read input from the repl
read_ :: IO String
read_ = putStr ">"
    >> getLine

-- eval takes the input from the REPL and evaluates
-- it using the 'alexScanTokens function, takes String
-- and returns a list of tokens
eval_ :: String -> [Token]
eval_ input = alexScanTokens input

-- The main function for the Repl
main :: IO ()
main = do
    -- Takes the input from the read function
    input <- read_
    -- unless it is :q or :quit
    unless (input == ":q" || input == ":quit")
    -- then prints the result of the evaluation function passing read as the input
    -- then recursively calls main
        $ print (eval_ input) >> main
    -- alexScanTokens s
    
