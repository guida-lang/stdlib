module System.IO exposing
    ( Handle
    , stdin, stdout, stderr
    , withFile, IOMode(..)
    , hClose
    , hFileSize
    , hPutStr, hPutStrLn
    , putStr, putStrLn, getLine
    )

{-| System.IO

The standard IO API.


# Files and handles

@docs Handle


# Standard handles

@docs stdin, stdout, stderr


# Opening files

@docs withFile, IOMode


# Closing files

@docs hClose


# File locking

@docs hFileSize


# Text output

@docs hPutStr, hPutStrLn


# Special cases for standard input and output

@docs putStr, putStrLn, getLine

-}

import Guida.Kernel.IO
import System.Handle as H
import Task exposing (Task)



-- Files and handles


type alias Handle =
    H.Handle



-- Standard handles


{-| stdin is a handle managing the programs standard input.
-}
stdin : Handle
stdin =
    H.Handle 0


{-| stdout is a handle managing the programs standard output.
-}
stdout : Handle
stdout =
    H.Handle 1


{-| stderr is a handle managing the programs standard error.
-}
stderr : Handle
stderr =
    H.Handle 2



-- Opening files


withFile : String -> IOMode -> (Handle -> Task Never r) -> Task Never r
withFile path mode callback =
    Guida.Kernel.IO.withFile path
        (case mode of
            ReadMode ->
                "r"

            WriteMode ->
                "w"

            AppendMode ->
                "a"

            ReadWriteMode ->
                "w+"
        )
        |> Task.map H.Handle
        |> Task.andThen callback


type IOMode
    = ReadMode
    | WriteMode
    | AppendMode
    | ReadWriteMode



-- Closing files


{-| Computation hClose hdl makes handle hdl closed.
-}
hClose : Handle -> Task Never ()
hClose (H.Handle handle) =
    Guida.Kernel.IO.hClose handle



-- File locking


{-| For a handle hdl which attached to a physical file, hFileSize hdl returns the size of that file in 8-bit bytes.
-}
hFileSize : Handle -> Task Never Int
hFileSize (H.Handle handle) =
    Guida.Kernel.IO.hFileSize handle



-- Text output


{-| Computation hPutStr hdl s writes the string s to the file or channel managed by hdl.
-}
hPutStr : Handle -> String -> Task Never ()
hPutStr (H.Handle handle) str =
    Guida.Kernel.IO.hPutStr handle str


{-| The same as hPutStr, but adds a newline character.
-}
hPutStrLn : Handle -> String -> Task Never ()
hPutStrLn handle str =
    hPutStr handle (str ++ "\n")



-- Special cases for standard input and output


{-| Write a string to the standard output device.
-}
putStr : String -> Task Never ()
putStr str =
    hPutStr stdout str


{-| The same as putStr, but adds a newline character.
-}
putStrLn : String -> Task Never ()
putStrLn str =
    hPutStrLn stdout str


{-| Read a line from the standard input device.
-}
getLine : Task Never String
getLine =
    Guida.Kernel.IO.getLine ()
