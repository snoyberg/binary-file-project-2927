{-# LANGUAGE TypeFamilies, QuasiQuotes, MultiParamTypeClasses,
             TemplateHaskell, OverloadedStrings #-}
import Yesod

data Piggies = Piggies

instance Yesod Piggies

mkYesod "Piggies" [parseRoutes|
  / HomeR GET
|]
-- test  here
getHomeR = defaultLayout [whamlet|
  The web piggies are here on aarond_1!  For a second time
  <br>
  <a href="http://fpcomplete.com">Visit our site!
  <p>
  |]

main = warpEnv Piggies