module Test.Html.Internal.GuidaHtml.Query exposing
    ( Selector(..)
    , query, queryAll, queryChildren, queryChildrenAll, queryInNode
    , queryById, queryByClassName, queryByClassList, queryByStyle, queryByTagName, queryByAttribute, queryByBoolAttribute
    , getChildren
    )

{-| Query things using GuidaHtml

@docs Selector
@docs query, queryAll, queryChildren, queryChildrenAll, queryInNode
@docs queryById, queryByClassName, queryByClassList, queryByStyle, queryByTagName, queryByAttribute, queryByBoolAttribute
@docs getChildren

-}

import Dict
import String
import Test.Html.Internal.GuidaHtml.InternalTypes exposing (..)


{-| Selectors to query a Html element

  - Id, classname, classlist, tag are all what you'd expect
  - Attribute and bool attribute are attributes
  - ConainsText just searches inside for the given text

-}
type Selector
    = Id String
    | ClassName String
    | ClassList (List String)
    | Tag String
    | Attribute String String
    | BoolAttribute String Bool
    | Style { key : String, value : String }
    | ContainsText String
    | ContainsExactText String
    | Multiple (List Selector)


{-| Query for a node with a given tag in a Html element
-}
queryByTagName : String -> GuidaHtml msg -> List (GuidaHtml msg)
queryByTagName tagname =
    query (Tag tagname)


{-| Query for a node with a given id in a Html element
-}
queryById : String -> GuidaHtml msg -> List (GuidaHtml msg)
queryById id =
    query (Id id)


{-| Query for a node with a given classname in a Html element
-}
queryByClassName : String -> GuidaHtml msg -> List (GuidaHtml msg)
queryByClassName classname =
    query (ClassName classname)


{-| Query for a node with all the given classnames in a Html element
-}
queryByClassList : List String -> GuidaHtml msg -> List (GuidaHtml msg)
queryByClassList classList =
    query (ClassList classList)


{-| Query for a node with the given style in a Html element
-}
queryByStyle : { key : String, value : String } -> GuidaHtml msg -> List (GuidaHtml msg)
queryByStyle style =
    query (Style style)


{-| Query for a node with a given attribute in a Html element
-}
queryByAttribute : String -> String -> GuidaHtml msg -> List (GuidaHtml msg)
queryByAttribute key value =
    query (Attribute key value)


{-| Query for a node with a given attribute in a Html element
-}
queryByBoolAttribute : String -> Bool -> GuidaHtml msg -> List (GuidaHtml msg)
queryByBoolAttribute key value =
    query (BoolAttribute key value)


{-| Query an GuidaHtml element using a selector, searching all children.
-}
query : Selector -> GuidaHtml msg -> List (GuidaHtml msg)
query selector =
    queryInNode selector


{-| Query an GuidaHtml node using multiple selectors, considering both the node itself
as well as all of its descendants.
-}
queryAll : List Selector -> GuidaHtml msg -> List (GuidaHtml msg)
queryAll selectors =
    query (Multiple selectors)


{-| Query an GuidaHtml node using a selector, considering both the node itself
as well as all of its descendants.
-}
queryInNode : Selector -> GuidaHtml msg -> List (GuidaHtml msg)
queryInNode =
    queryInNodeHelp Nothing


{-| Query an GuidaHtml node using a selector, considering both the node itself
as well as all of its descendants.
-}
queryChildren : Selector -> GuidaHtml msg -> List (GuidaHtml msg)
queryChildren =
    queryInNodeHelp (Just 1)


{-| Returns just the immediate children of an GuidaHtml node
-}
getChildren : GuidaHtml msg -> List (GuidaHtml msg)
getChildren guidaHtml =
    case guidaHtml of
        NodeEntry { children } ->
            children

        _ ->
            []


{-| Query to ensure an GuidaHtml node has all selectors given, without considering
any descendants lower than its immediate children.
-}
queryChildrenAll : List Selector -> GuidaHtml msg -> List (GuidaHtml msg)
queryChildrenAll selectors =
    queryInNodeHelp (Just 1) (Multiple selectors)


queryInNodeHelp : Maybe Int -> Selector -> GuidaHtml msg -> List (GuidaHtml msg)
queryInNodeHelp maxDescendantDepth selector node =
    case node of
        NodeEntry record ->
            let
                childEntries =
                    descendInQuery maxDescendantDepth selector record.children
            in
            if predicateFromSelector selector node then
                node :: childEntries

            else
                childEntries

        TextTag { text } ->
            case selector of
                ContainsText innerText ->
                    if String.contains innerText text then
                        [ node ]

                    else
                        []

                ContainsExactText innerText ->
                    if innerText == text then
                        [ node ]

                    else
                        []

                _ ->
                    []

        MarkdownNode _ ->
            if predicateFromSelector selector node then
                [ node ]

            else
                []

        _ ->
            []


descendInQuery : Maybe Int -> Selector -> List (GuidaHtml msg) -> List (GuidaHtml msg)
descendInQuery maxDescendantDepth selector children =
    case maxDescendantDepth of
        Nothing ->
            -- No maximum, so continue.
            List.concatMap
                (queryInNodeHelp Nothing selector)
                children

        Just depth ->
            if depth > 0 then
                -- Continue with maximum depth reduced by 1.
                List.concatMap
                    (queryInNodeHelp (Just (depth - 1)) selector)
                    children

            else
                []


predicateFromSelector : Selector -> GuidaHtml msg -> Bool
predicateFromSelector selector html =
    case html of
        NodeEntry record ->
            record
                |> nodeRecordPredicate selector

        MarkdownNode markdownModel ->
            markdownModel
                |> markdownPredicate selector

        _ ->
            False


hasAllSelectors : List Selector -> GuidaHtml msg -> Bool
hasAllSelectors selectors record =
    List.map predicateFromSelector selectors
        |> List.map (\selector -> selector record)
        |> List.all identity


hasAttribute : String -> String -> Facts msg -> Bool
hasAttribute attribute queryString facts =
    case Dict.get attribute facts.stringAttributes of
        Just id ->
            id == queryString

        Nothing ->
            False


hasBoolAttribute : String -> Bool -> Facts msg -> Bool
hasBoolAttribute attribute value facts =
    case Dict.get attribute facts.boolAttributes of
        Just id ->
            id == value

        Nothing ->
            False


hasClass : String -> Facts msg -> Bool
hasClass queryString facts =
    List.member queryString (classnames facts)


hasClasses : List String -> Facts msg -> Bool
hasClasses classList facts =
    containsAll classList (classnames facts)


hasStyle : { key : String, value : String } -> Facts msg -> Bool
hasStyle style facts =
    Dict.get style.key facts.styles == Just style.value


classnames : Facts msg -> List String
classnames facts =
    Dict.get "className" facts.stringAttributes
        |> Maybe.withDefault ""
        |> String.split " "


containsAll : List a -> List a -> Bool
containsAll a b =
    b
        |> List.foldl (\i acc -> List.filter ((/=) i) acc) a
        |> List.isEmpty


nodeRecordPredicate : Selector -> (NodeRecord msg -> Bool)
nodeRecordPredicate selector =
    case selector of
        Id id ->
            .facts
                >> hasAttribute "id" id

        ClassName classname ->
            .facts
                >> hasClass classname

        ClassList classList ->
            .facts
                >> hasClasses classList

        Tag tag ->
            .tag
                >> (==) tag

        Attribute key value ->
            .facts
                >> hasAttribute key value

        BoolAttribute key value ->
            .facts
                >> hasBoolAttribute key value

        Style style ->
            .facts
                >> hasStyle style

        ContainsText _ ->
            always False

        ContainsExactText _ ->
            always False

        Multiple selectors ->
            NodeEntry
                >> hasAllSelectors selectors


markdownPredicate : Selector -> (MarkdownNodeRecord msg -> Bool)
markdownPredicate selector =
    case selector of
        Id id ->
            .facts
                >> hasAttribute "id" id

        ClassName classname ->
            .facts
                >> hasClass classname

        ClassList classList ->
            .facts
                >> hasClasses classList

        Tag _ ->
            always False

        Attribute key value ->
            .facts
                >> hasAttribute key value

        BoolAttribute key value ->
            .facts
                >> hasBoolAttribute key value

        Style style ->
            .facts
                >> hasStyle style

        ContainsText text ->
            .model
                >> .markdown
                >> String.contains text

        ContainsExactText text ->
            .model
                >> .markdown
                >> (==) text

        Multiple selectors ->
            MarkdownNode
                >> hasAllSelectors selectors
