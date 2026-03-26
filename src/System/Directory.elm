module System.Directory exposing
    ( createDirectoryIfMissing, removeDirectoryRecursive, listDirectory
    , getCurrentDirectory, withCurrentDirectory
    , getAppUserDataDirectory
    , removeFile, canonicalizePath
    , doesFileExist, doesDirectoryExist, findExecutable
    , getModificationTime
    , getDirname
    )

{-| System.Directory

System-independent interface to directory manipulation (FilePath API).


# Actions on directories

@docs createDirectoryIfMissing, removeDirectoryRecursive, listDirectory


## Current working directory

@docs getCurrentDirectory, withCurrentDirectory


# Pre-defined directories

@docs getAppUserDataDirectory


# Actions on files

@docs removeFile, canonicalizePath


# Existence tests

@docs doesFileExist, doesDirectoryExist, findExecutable


# Timestamps

@docs getModificationTime


# Other

@docs getDirname

-}

import Guida.Kernel.Directory
import Task exposing (Task)
import Time



-- Actions on directories


{-| createDirectoryIfMissing parents dir creates a new directory dir if it doesn't
exist. If the first argument is True the function will also create all parent
directories if they are missing.
-}
createDirectoryIfMissing : Bool -> String -> Task Never ()
createDirectoryIfMissing parents dir =
    Guida.Kernel.Directory.createDirectoryIfMissing parents dir


{-| removeDirectoryRecursive dir removes an existing directory dir together with
its contents and subdirectories. Within this directory, symbolic links are
removed without affecting their targets.
-}
removeDirectoryRecursive : String -> Task Never ()
removeDirectoryRecursive dir =
    Guida.Kernel.Directory.removeDirectoryRecursive dir


{-| listDirectory dir returns a list of all entries in dir without the special
entries (. and ..).
-}
listDirectory : String -> Task Never (List String)
listDirectory dir =
    Guida.Kernel.Directory.listDirectory dir



-- Current working directory


{-| Obtain the current working directory as an absolute path.
-}
getCurrentDirectory : Task Never String
getCurrentDirectory =
    Guida.Kernel.Directory.getCurrentDirectory ()


setCurrentDirectory : String -> Task Never ()
setCurrentDirectory dir =
    Guida.Kernel.Directory.setCurrentDirectory dir


{-| Run an IO action with the given working directory and restore the original
working directory afterwards, even if the given action fails due to an exception.
-}
withCurrentDirectory : String -> Task Never a -> Task Never a
withCurrentDirectory dir action =
    getCurrentDirectory
        |> Task.andThen
            (\originalDir ->
                setCurrentDirectory dir
                    |> Task.andThen
                        (\_ ->
                            action
                                |> Task.andThen
                                    (\result ->
                                        setCurrentDirectory originalDir
                                            |> Task.map (\_ -> result)
                                    )
                        )
            )



-- Pre-defined directories


{-| Get the path to the user data directory for the given application name.
-}
getAppUserDataDirectory : String -> Task Never String
getAppUserDataDirectory appName =
    Guida.Kernel.Directory.getAppUserDataDirectory appName



-- Actions on files


{-| removeFile file removes the directory entry for an existing file file, where
file is not itself a directory. The implementation may specify additional
constraints which must be satisfied before a file can be removed (e.g. the file
may not be in use by other processes).
-}
removeFile : String -> Task Never ()
removeFile file =
    Guida.Kernel.Directory.removeFile file


{-| Make a path absolute, normalize the path, and remove as many indirections from
it as possible. Any trailing path separators are discarded via
dropTrailingPathSeparator. Additionally, on Windows the letter case of the path
is canonicalized.
-}
canonicalizePath : String -> Task Never String
canonicalizePath path =
    Guida.Kernel.Directory.canonicalizePath path



-- Existence tests


{-| The operation doesFileExist returns True if the argument file exists and is
not a directory, and False otherwise.
-}
doesFileExist : String -> Task Never Bool
doesFileExist filename =
    Guida.Kernel.Directory.doesFileExist filename


{-| The operation doesDirectoryExist returns True if the argument file exists and
is either a directory or a symbolic link to a directory, and False otherwise.
-}
doesDirectoryExist : String -> Task Never Bool
doesDirectoryExist path =
    Guida.Kernel.Directory.doesDirectoryExist path


{-| Given the name or path of an executable file, findExecutable searches for
such a file in a list of system-defined locations, which generally includes
PATH and possibly more.
-}
findExecutable : String -> Task Never (Maybe String)
findExecutable filename =
    Guida.Kernel.Directory.findExecutable filename



-- Timestamps


{-| Obtain the time at which the file or directory was last modified.
-}
getModificationTime : String -> Task Never Time.Posix
getModificationTime filename =
    Guida.Kernel.Directory.getModificationTime filename



-- Other


{-| The directory name of the current file as an absolute path.
-}
getDirname : Task Never String
getDirname =
    Guida.Kernel.Directory.getDirname ()
