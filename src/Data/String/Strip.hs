module Data.String.Strip (strip)  where

import Data.Char

strip :: String -> String
strip = dropWhile isSpace . reverse . dropWhile isSpace . reverse

data GameEndingCondition = RunningOutBelowZero | RunningOutZeroOrLess | WinAndFinish | ContinuingIntoWest
data RenchanCondition = Agari | Tempai
newtype JuniUma = JuniUma (Int, Int)
newtype Agariyame = Agariyame Bool
newtype Akadora = Akadora Bool
newtype Uradora = Uradora Bool
newtype Kandora = Kandora Bool
newtype Ippatu = Ippatus Bool
newtype Kuitan = Kuitan Bool
newtype Atoduke = Atoduke Bool
newtype Dice = Dice (Int, Int)
data GameLength = Tonpuu | Hanchan | Iichan
data Ba = TonBa | NanBa | ShaBa | PeiBa
newtype Kyoku = Kyoku Int
newtype Score = Score Int
newtype Hai = Hai ()
newtype Yamahai = Yamahai [Hai]
newtype Hou = Hou [Hai] --河
newtype Chi = Chi [Hai] --地
data Cha = Cha { score :: Score
  , hou :: Hou
  , chi :: Chi
  , riich :: Bool
  } --家
data Game = Game { gameEndingCondition :: GameEndingCondition
  , gameLength :: GameLength
  , gameScore :: Int
  , oka :: Int
  , juniUma :: Int
  , renchanCondition :: RenchanCondition
  , agariyame :: Agariyame
  , akadora :: Akadora
  , uradora :: Uradora
  , kandora :: Kandora
  , ippatu :: Ippatu
  , kuitan :: Kuitan
  , atoduke :: Atoduke
  , dice :: Dice
  , ba :: Ba
  , kyoku :: Kyoku
  , wall :: Hai
  , tonCha :: Cha
  , nanCha :: Cha
  , shaCha :: Cha
  , peiCha :: Cha
                 }

