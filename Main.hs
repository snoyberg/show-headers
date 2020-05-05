{-# LANGUAGE OverloadedStrings #-}
import Network.Wai
import Network.Wai.Handler.Warp
import Network.HTTP.Types
import Data.String (fromString)

main :: IO ()
main =
    run 3000 $ \req send ->
        send $ responseBuilder
            status200
            [("content-type", "text/plain")] $
            fromString $ unlines $
                show (pathInfo req) :
                show (queryString req) :
                map show (requestHeaders req)
