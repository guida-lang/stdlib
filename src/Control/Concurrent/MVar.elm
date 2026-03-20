module Control.Concurrent.MVar exposing
    ( MVar, newEmptyMVar, putMVar, readMVar, takeMVar
    , decoder, encoder
    )

{-| Control.Concurrent.MVar


# TODO

@docs MVar, newEmptyMVar, putMVar, readMVar, takeMVar
@docs decoder, encoder

-}

import Bytes
import Bytes.Decode as BD
import Bytes.Encode as BE
import Guida.Kernel.MVar
import Task exposing (Task)


{-| MVar
-}
type MVar a
    = MVar Int


{-| newEmptyMVar
-}
newEmptyMVar : Task Never (MVar a)
newEmptyMVar =
    Guida.Kernel.MVar.newEmptyMVar MVar


{-| putMVar
-}
putMVar : MVar a -> a -> Task Never ()
putMVar (MVar ref) value =
    Guida.Kernel.MVar.putMVar ref value


{-| readMVar
-}
readMVar : MVar a -> Task Never a
readMVar (MVar ref) =
    Guida.Kernel.MVar.readMVar ref


{-| takeMVar
-}
takeMVar : MVar a -> Task Never a
takeMVar (MVar ref) =
    Guida.Kernel.MVar.takeMVar ref


{-| decoder
-}
decoder : BD.Decoder (MVar a)
decoder =
    BD.map MVar (BD.float64 Bytes.BE |> BD.map round)


{-| encoder
-}
encoder : MVar a -> BE.Encoder
encoder (MVar ref) =
    BE.float64 Bytes.BE (toFloat ref)
