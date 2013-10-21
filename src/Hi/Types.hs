{-# LANGUAGE OverloadedStrings #-}

module Hi.Types
    (
      Flag
    , InitFlags(..)
    , Label
    , Arg(..)
    , Mode(..)
    , Files
    ) where

type Files = [(FilePath, String)]

type Flag = String

data InitFlags =
    InitFlags { packageName :: !Flag
              , moduleName  :: !Flag
              , author      :: !Flag
              , email       :: !Flag
              , repository  :: !Flag
              , year        :: !Flag
              } deriving(Eq, Show)

type Label = String

-- | Arguments.
data Arg = Version | NoConfigurationFile | Val Label String deriving(Eq, Show)

-- | Run mode.
data Mode = ShowVersion | Run | RunWithNoConfigurationFile deriving(Eq, Show)
