-- Info Datatype is for storing vulnerability information to be then provided to the user
module Analysis.Info_Data where

data Info = Info Location Details
          | Warning Location Details
          | High Location Details
          | Blank
            deriving (Show, Eq, Ord)
type Location = String
type Details = String