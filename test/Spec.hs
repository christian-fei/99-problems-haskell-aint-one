module Main where

import Control.Exception (evaluate)
import Test.Hspec
import Lists

main :: IO ()
main = hspec $ do
  describe "Lists" $ do
    it "myLast" $ do
      myLast [1..10] `shouldBe` 10
    it "myLast on empty list" $ do
      evaluate (myLast []) `shouldThrow` anyException
