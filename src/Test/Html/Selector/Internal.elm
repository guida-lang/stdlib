module Test.Html.Selector.Internal exposing (Selector(..), hasAll, namedAttr, namedBoolAttr, query, queryAll, queryAllChildren, selectorToString, styleToString)

import Test.Html.Internal.GuidaHtml.InternalTypes exposing (GuidaHtml)
import Test.Html.Internal.GuidaHtml.Query as GuidaHtmlQuery


type Selector
    = All (List Selector)
    | Classes (List String)
    | Class String
    | Attribute { name : String, value : String }
    | BoolAttribute { name : String, value : Bool }
    | Style { key : String, value : String }
    | Tag String
    | Text String
    | ExactText String
    | Containing (List Selector)
    | Invalid


selectorToString : Selector -> String
selectorToString criteria =
    let
        quoteString s =
            "\"" ++ s ++ "\""

        boolToString b =
            case b of
                True ->
                    "True"

                False ->
                    "False"
    in
    case criteria of
        All list ->
            list
                |> List.map selectorToString
                |> String.join " "

        Classes list ->
            "classes " ++ quoteString (String.join " " list)

        Class class ->
            "class " ++ quoteString class

        Attribute { name, value } ->
            "attribute "
                ++ quoteString name
                ++ " "
                ++ quoteString value

        BoolAttribute { name, value } ->
            "attribute "
                ++ quoteString name
                ++ " "
                ++ boolToString value

        Style style ->
            "styles " ++ styleToString style

        Tag name ->
            "tag " ++ quoteString name

        Text text ->
            "text " ++ quoteString text

        ExactText text ->
            "exact text " ++ quoteString text

        Containing list ->
            let
                selectors =
                    list
                        |> List.map selectorToString
                        |> String.join ", "
            in
            "containing [ " ++ selectors ++ " ] "

        Invalid ->
            "invalid"


styleToString : { key : String, value : String } -> String
styleToString { key, value } =
    key ++ ":" ++ value


hasAll : List Selector -> List (GuidaHtml msg) -> Bool
hasAll selectors elems =
    case selectors of
        [] ->
            True

        selector :: rest ->
            if List.isEmpty (queryAll [ selector ] elems) then
                False

            else
                hasAll rest elems


queryAll : List Selector -> List (GuidaHtml msg) -> List (GuidaHtml msg)
queryAll selectors list =
    case selectors of
        [] ->
            list

        selector :: rest ->
            query GuidaHtmlQuery.query queryAll selector list
                |> queryAll rest


queryAllChildren : List Selector -> List (GuidaHtml msg) -> List (GuidaHtml msg)
queryAllChildren selectors list =
    case selectors of
        [] ->
            list

        selector :: rest ->
            query GuidaHtmlQuery.queryChildren queryAllChildren selector list
                |> queryAllChildren rest


query :
    (GuidaHtmlQuery.Selector -> GuidaHtml msg -> List (GuidaHtml msg))
    -> (List Selector -> List (GuidaHtml msg) -> List (GuidaHtml msg))
    -> Selector
    -> List (GuidaHtml msg)
    -> List (GuidaHtml msg)
query fn fnAll selector list =
    case list of
        [] ->
            list

        elems ->
            case selector of
                All selectors ->
                    fnAll selectors elems

                Classes classes ->
                    List.concatMap (fn (GuidaHtmlQuery.ClassList classes)) elems

                Class class ->
                    List.concatMap (fn (GuidaHtmlQuery.ClassList [ class ])) elems

                Attribute { name, value } ->
                    List.concatMap (fn (GuidaHtmlQuery.Attribute name value)) elems

                BoolAttribute { name, value } ->
                    List.concatMap (fn (GuidaHtmlQuery.BoolAttribute name value)) elems

                Style style ->
                    List.concatMap (fn (GuidaHtmlQuery.Style style)) elems

                Tag name ->
                    List.concatMap (fn (GuidaHtmlQuery.Tag name)) elems

                Text text ->
                    List.concatMap (fn (GuidaHtmlQuery.ContainsText text)) elems

                ExactText text ->
                    List.concatMap (fn (GuidaHtmlQuery.ContainsExactText text)) elems

                Containing selectors ->
                    let
                        anyDescendantsMatch elem =
                            case GuidaHtmlQuery.getChildren elem of
                                [] ->
                                    -- We have no children;
                                    -- no descendants can possibly match.
                                    False

                                children ->
                                    case query fn fnAll (All selectors) children of
                                        [] ->
                                            -- None of our children matched,
                                            -- but their descendants might!
                                            List.any anyDescendantsMatch children

                                        _ :: _ ->
                                            -- At least one child matched. Yay!
                                            True
                    in
                    List.filter anyDescendantsMatch elems

                Invalid ->
                    []


namedAttr : String -> String -> Selector
namedAttr name value =
    Attribute
        { name = name
        , value = value
        }


namedBoolAttr : String -> Bool -> Selector
namedBoolAttr name value =
    BoolAttribute
        { name = name
        , value = value
        }
