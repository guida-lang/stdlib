module System.Environment exposing (getArgs, getProgName, lookupEnv)

{-| System.Environment

Miscellaneous information about the system environment.

@docs getArgs, getProgName, lookupEnv

-}

import Guida.Kernel.Environment
import Task exposing (Task)


{-| Computation getArgs returns a list of the program's command line arguments
(not including the program name).
-}
getArgs : Task Never (List String)
getArgs =
    Guida.Kernel.Environment.getArgs ()


{-| Computation getProgName returns the name of the program as it was invoked.
-}
getProgName : Task Never String
getProgName =
    Guida.Kernel.Environment.getProgName ()


{-| Return the value of the environment variable var, or Nothing if there is no
such value.
-}
lookupEnv : String -> Task Never (Maybe String)
lookupEnv name =
    Guida.Kernel.Environment.lookupEnv name
