module Main where

import Test.Hspec
import Lists

main :: IO ()
main = hspec $ do
  describe "Lists" $ do
    it "myLast" $ do
      myLast [1..10] `shouldBe` 10
