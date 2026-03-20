module Control.Concurrent.MVar exposing (MVar, newEmptyMVar, newMVar, modifyMVar, putMVar, readMVar, takeMVar)

{-| Control.Concurrent.MVar


# TODO

@docs MVar, newEmptyMVar, newMVar, modifyMVar, putMVar, readMVar, takeMVar

-}

import Bytes
import Bytes.Decode as BD
import Bytes.Encode as BE
import Guida.Kernel.MVar
import Task exposing (Task)


{-| An `MVar` (pronounced "em-var") is a synchronising variable, used
for communication between concurrent threads. It can be thought of
as a box, which may be empty or full.
-}
type MVar a
    = MVar Int


{-| Create an `MVar` which contains the supplied value.
-}
newEmptyMVar : Task Never (MVar a)
newEmptyMVar =
    Guida.Kernel.MVar.newEmptyMVar MVar


{-| Create an `MVar` which contains the supplied value.
-}
newMVar : a -> Task Never (MVar a)
newMVar value =
    newEmptyMVar
        |> Task.andThen
            (\mvar ->
                putMVar mvar value
                    |> Task.map (\_ -> mvar)
            )


{-| An exception-safe wrapper for modifying the contents of an `MVar`.
Like `withMVar`, `modifyMVar` will replace the original contents of
the `MVar` if an exception is raised during the operation. This
function is only atomic if there are no other producers for this
`MVar`. In other words, it cannot guarantee that, by the time
`modifyMVar_` gets the chance to write to the MVar, the value
of the MVar has not been altered by a write operation from another thread.

A slight variation on `modifyMVar_` that allows a value to be
returned (@b@) in addition to the modified value of the `MVar`.

-}
modifyMVar : MVar a -> (a -> Task Never ( a, b )) -> Task Never b
modifyMVar m io =
    takeMVar m
        |> Task.andThen io
        |> Task.andThen
            (\( a, b ) ->
                putMVar m a
                    |> Task.map (\_ -> b)
            )


{-| Put a value into an `MVar`. If the `MVar` is currently full,
`putMVar` will wait until it becomes empty.

There are two further important properties of `putMVar`:

  - `putMVar` is single-wakeup. That is, if there are multiple
    threads blocked in `putMVar`, and the `MVar` becomes empty,
    only one thread will be woken up. The runtime guarantees that
    the woken thread completes its `putMVar` operation.

  - When multiple threads are blocked on an `MVar`, they are
    woken up in FIFO order. This is useful for providing
    fairness properties of abstractions built using `MVar`s.

-}
putMVar : MVar a -> a -> Task Never ()
putMVar (MVar ref) value =
    Guida.Kernel.MVar.putMVar ref value


{-| Atomically read the contents of an `MVar`. If the `MVar` is
currently empty, `readMVar` will wait until it is full.
`readMVar` is guaranteed to receive the next `putMVar`.

`readMVar` is multiple-wakeup, so when multiple readers are
blocked on an `MVar`, all of them are woken up at the same time.
The runtime guarantees that all woken threads complete their `readMVar` operation.

-}
readMVar : MVar a -> Task Never a
readMVar (MVar ref) =
    Guida.Kernel.MVar.readMVar ref


{-| Return the contents of the `MVar`. If the `MVar` is currently
empty, `takeMVar` will wait until it is full. After a `takeMVar`,
the `MVar` is left empty.

There are two further important properties of `takeMVar`:

  - `takeMVar` is single-wakeup. That is, if there are multiple
    threads blocked in `takeMVar`, and the `MVar` becomes full,
    only one thread will be woken up. The runtime guarantees that
    the woken thread completes its `takeMVar` operation.

  - When multiple threads are blocked on an `MVar`, they are
    woken up in FIFO order. This is useful for providing
    fairness properties of abstractions built using `MVar`s.

-}
takeMVar : MVar a -> Task Never a
takeMVar (MVar ref) =
    Guida.Kernel.MVar.takeMVar ref
