module Test.Internal exposing (Test(..), blankDescriptionFailure, duplicatedName, failNow, toString)

import Random
import Set exposing (Set)
import Test.Expectation exposing (Expectation)
import Test.Runner.Failure exposing (InvalidReason(..), Reason(..))


{-| All variants of this type has the `GuidaTestVariant__` prefix so that
node-test-runner can recognize them in the compiled JavaScript. This lets us
add more variants here without having to update the runner.

For more information, see <https://github.com/elm-explorations/test/pull/153>

-}
type Test
    = GuidaTestVariant__UnitTest (() -> List Expectation)
    | GuidaTestVariant__FuzzTest (Random.Seed -> Int -> List Expectation)
    | GuidaTestVariant__Labeled String Test
    | GuidaTestVariant__Skipped Test
    | GuidaTestVariant__Only Test
    | GuidaTestVariant__Batch (List Test)


{-| Create a test that always fails for the given reason and description.
-}
failNow : { description : String, reason : Reason } -> Test
failNow record =
    GuidaTestVariant__UnitTest
        (\() -> [ Test.Expectation.fail record ])


blankDescriptionFailure : Test
blankDescriptionFailure =
    failNow
        { description = "This test has a blank description. Let's give it a useful one!"
        , reason = Invalid BadDescription
        }


duplicatedName : List Test -> Result (Set String) (Set String)
duplicatedName tests =
    let
        names : Test -> List String
        names test =
            case test of
                GuidaTestVariant__Labeled str _ ->
                    [ str ]

                GuidaTestVariant__Batch subtests ->
                    List.concatMap names subtests

                GuidaTestVariant__UnitTest _ ->
                    []

                GuidaTestVariant__FuzzTest _ ->
                    []

                GuidaTestVariant__Skipped subTest ->
                    names subTest

                GuidaTestVariant__Only subTest ->
                    names subTest

        accumDuplicates : String -> ( Set String, Set String ) -> ( Set String, Set String )
        accumDuplicates newName ( dups, uniques ) =
            if Set.member newName uniques then
                ( Set.insert newName dups, uniques )

            else
                ( dups, Set.insert newName uniques )

        ( dupsAccum, uniquesAccum ) =
            List.concatMap names tests
                |> List.foldl accumDuplicates ( Set.empty, Set.empty )
    in
    if Set.isEmpty dupsAccum then
        Ok uniquesAccum

    else
        Err dupsAccum


toString : a -> String
toString =
    Guida.Kernel.Debug.toString
