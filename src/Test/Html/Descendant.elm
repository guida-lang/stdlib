module Test.Html.Descendant exposing (isDescendant)

import Test.Html.Internal.GuidaHtml.InternalTypes exposing (GuidaHtml(..))


isDescendant : List (GuidaHtml msg) -> GuidaHtml msg -> Bool
isDescendant html potentialDescendant =
    case html of
        [] ->
            False

        current :: rest ->
            if current == potentialDescendant then
                True

            else
                isDescendant
                    (prependChildren current rest)
                    potentialDescendant


prependChildren : GuidaHtml msg -> List (GuidaHtml msg) -> List (GuidaHtml msg)
prependChildren parentNode nodeList =
    case parentNode of
        NodeEntry { children } ->
            List.concat [ children, nodeList ]

        _ ->
            nodeList
