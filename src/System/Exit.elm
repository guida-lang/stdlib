module System.Exit exposing (ExitCode(..), exitWith, exitFailure, exitSuccess)

{-| System.Exit

Exiting the program.

@docs ExitCode, exitWith, exitFailure, exitSuccess

-}

import Guida.Kernel.Exit
import Task exposing (Task)


type ExitCode
    = ExitSuccess
    | ExitFailure Int


exitWith : ExitCode -> Cmd msg
exitWith exitCode =
    Guida.Kernel.Exit.exitWith
        (case exitCode of
            ExitSuccess ->
                0

            ExitFailure n ->
                n
        )


exitFailure : Cmd msg
exitFailure =
    exitWith (ExitFailure 1)


exitSuccess : Cmd msg
exitSuccess =
    exitWith ExitSuccess
