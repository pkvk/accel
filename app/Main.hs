module Main where

import Lib
import Prelude hiding ( zipWith )
import Data.Array.Accelerate
import Data.Array.Accelerate.LLVM.PTX

dotp :: Acc (Vector Float) -> Acc (Vector Float) -> Acc (Scalar Float)
dotp xs ys = fold (+) 0 (zipWith (*) xs ys)

main :: IO ()
main = someFunc
