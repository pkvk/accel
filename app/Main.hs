{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE FlexibleContexts #-}

module Main where

import Lib
import Prelude hiding ( zipWith )
import Data.Array.Accelerate             as A
import Data.Array.Accelerate.LLVM.PTX    as A

dotp :: Acc (Vector Float) -> Acc (Vector Float) -> Acc (Scalar Float)
dotp xs ys = fold (+) 0 (zipWith (*) xs ys)

-- | Matrix-vector product
mvm :: A.Num a => Acc (Matrix a) -> Acc (Vector a) -> Acc (Vector a)
mvm mat vec =
  let Z :. rows :. cols = unlift (shape mat) :: Z :. Exp Int :. Exp Int
      vec'              = A.replicate (lift (Z :. rows :. All)) vec
  in
  A.fold (+) 0 ( A.zipWith (*) mat vec' )

main :: IO ()
main = someFunc
