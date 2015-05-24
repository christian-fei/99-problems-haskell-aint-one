module Spec where

import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "tests" $ do
    it "does something" $ do
      head [1..10] `shouldBe` 1
