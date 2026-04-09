module System.Process exposing
    ( CmdSpec
    , CreateProcess
    , ProcessHandle
    , StdStream(..)
    , proc
    , waitForProcess
    , withCreateProcess
    )

import Guida.Kernel.SystemProcess
import System.Exit as Exit
import System.Handle exposing (Handle(..))
import System.IO as IO
import Task exposing (Task)


type CmdSpec
    = RawCommand String (List String)


type alias CreateProcess =
    { cmdspec : CmdSpec
    , std_in : StdStream
    , std_out : StdStream
    , std_err : StdStream
    }


type StdStream
    = Inherit
    | CreatePipe
    | NoStream


type ProcessHandle
    = ProcessHandle Int


proc : String -> List String -> CreateProcess
proc cmd args =
    { cmdspec = RawCommand cmd args
    , std_in = Inherit
    , std_out = Inherit
    , std_err = Inherit
    }


withCreateProcess : CreateProcess -> (Maybe Handle -> Maybe Handle -> Maybe Handle -> ProcessHandle -> Task Never Exit.ExitCode) -> Task Never Exit.ExitCode
withCreateProcess createProcess f =
    let
        ( cmd, args ) =
            case createProcess.cmdspec of
                RawCommand cmd_ args_ ->
                    ( cmd_, args_ )
    in
    Guida.Kernel.SystemProcess.withCreateProcess cmd
        args
        createProcess.std_in
        createProcess.std_out
        createProcess.std_err
        |> Task.andThen
            (\( stdinHandle, ph ) ->
                f (Just (Handle stdinHandle)) Nothing Nothing (ProcessHandle ph)
            )


waitForProcess : ProcessHandle -> Task Never Exit.ExitCode
waitForProcess (ProcessHandle ph) =
    Guida.Kernel.SystemProcess.waitForProcess ph
