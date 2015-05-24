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
    it "myLast on singleton list" $ do
      myLast [1] `shouldBe` 1

    it "myButLast" $ do
      myButLast [1..10] `shouldBe` 9

    it "elementAt" $ do
      elementAt [1..10] 1 `shouldBe` 1
      elementAt "python" 2 `shouldBe` 'y'

    it "myLength" $ do
      myLength [1..10] `shouldBe` 10

    it "myReverse" $ do
      myReverse [1..10] `shouldBe` reverse [1..10]

    it "isPalindrome" $ do
      isPalindrome [] `shouldBe` True
      -- isPalindrome "mum" `shouldBe` True
