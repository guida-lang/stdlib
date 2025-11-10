module Test.Html.Internal.GuidaHtml.Helpers exposing (filterKnownKeys)

{-| Internal helpers for GuidaHtml

@docs filterKnownKeys

-}

import Dict exposing (Dict)
import Test.Html.Internal.GuidaHtml.Constants exposing (knownKeys)


{-| Filter out keys that we don't know
-}
filterKnownKeys : Dict String a -> Dict String a
filterKnownKeys =
    Dict.filter (\key _ -> not (List.member key knownKeys))
