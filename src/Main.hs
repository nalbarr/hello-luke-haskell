-- NAA: 
-- NLA, Module is basic form of modularity and namespacing in Haskell
-- NLA, you need to explicitly import modules you need
-- e.g., System.IO for "show" conversion function
-- e.g., TicTacToe for you custom functions
module Main where
import System.Environment
import System.IO
import SomeExternalModule (foo, bar)

-- NAA. main function declaration
main :: IO()
-- NAA. main function body
main = do
  -- NAA: define inline "factorial" function
  let fac n = if n == 0 then 1 else n * fac (n-1)
  putStr "fac 5: "
  let fac5 = fac 5
  putStrLn (show fac5)

  let x = foo 2
  putStr "x: "
  putStrLn (show x)

  let s = bar "blah "
  putStr "s: "
  putStrLn s