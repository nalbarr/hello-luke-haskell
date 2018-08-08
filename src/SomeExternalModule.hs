-- NAA: 
-- NLA, Module is basic form of modularity and namespacing in Haskell
-- NLA, you need to put foo, bar below in order for it to be externally public
-- and picked up by calling Main.hs program.
-- Try removing them and you will see it will not compile.
module SomeExternalModule ( foo, bar ) where

-- NAA: NLA, below Does not compile !!!  
--foo :: Int -> Int

-- NAA: NLA, each "SomeExternalModule" library function has 2 lines:
-- 1. function declaration
-- 2. function body
-- This is a bit weird in that in Java, Scala, Clojure this all usually are in one
-- enclosing "block syntax" with parens, braces, etc.
-- NOTE:  Rust is similar; forces separation between declaration and implementations.
-- Scala, Rust build upon this with "Traits"

foo :: Integer -> Integer
foo x = 2 * x

bar :: [Char] -> [Char]
bar s = s ++ s