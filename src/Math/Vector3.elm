module Math.Vector3 exposing
    ( Vec3, vec3, i, j, k
    , getX, getY, getZ, setX, setY, setZ
    , add, sub, negate, scale, dot, cross, normalize, direction
    , length, lengthSquared, distance, distanceSquared
    , toRecord, fromRecord
    )

{-| A high performance linear algebra library using native JS arrays. Geared
towards 3D graphics and use with `Graphics.WebGL`. All vectors are immutable.


# Create

@docs Vec3, vec3, i, j, k


# Get and Set

The set functions create a new copy of the vector, updating a single field.

@docs getX, getY, getZ, setX, setY, setZ


# Operations

@docs add, sub, negate, scale, dot, cross, normalize, direction
@docs length, lengthSquared, distance, distanceSquared


# Conversions

@docs toRecord, fromRecord

-}

import Guida.Kernel.MJS


{-| Three dimensional vector type
-}
type Vec3
    = Vec3


{-| Creates a new 3-element vector with the given values.
-}
vec3 : Float -> Float -> Float -> Vec3
vec3 =
    Guida.Kernel.MJS.v3


{-| The unit vector &icirc; which points in the x direction: `vec3 1 0 0`
-}
i : Vec3
i =
    Guida.Kernel.MJS.v3 1 0 0


{-| The unit vector &jcirc; which points in the y direction: `vec3 0 1 0`
-}
j : Vec3
j =
    Guida.Kernel.MJS.v3 0 1 0


{-| The unit vector k&#0770; which points in the z direction: `vec3 0 0 1`
-}
k : Vec3
k =
    Guida.Kernel.MJS.v3 0 0 1


{-| Extract the x component of a vector.
-}
getX : Vec3 -> Float
getX =
    Guida.Kernel.MJS.v3getX


{-| Extract the y component of a vector.
-}
getY : Vec3 -> Float
getY =
    Guida.Kernel.MJS.v3getY


{-| Extract the z component of a vector.
-}
getZ : Vec3 -> Float
getZ =
    Guida.Kernel.MJS.v3getZ


{-| Update the x component of a vector, returning a new vector.
-}
setX : Float -> Vec3 -> Vec3
setX =
    Guida.Kernel.MJS.v3setX


{-| Update the y component of a vector, returning a new vector.
-}
setY : Float -> Vec3 -> Vec3
setY =
    Guida.Kernel.MJS.v3setY


{-| Update the z component of a vector, returning a new vector.
-}
setZ : Float -> Vec3 -> Vec3
setZ =
    Guida.Kernel.MJS.v3setZ


{-| Convert a vector to a record.
-}
toRecord : Vec3 -> { x : Float, y : Float, z : Float }
toRecord =
    Guida.Kernel.MJS.v3toRecord


{-| Convert a record to a vector.
-}
fromRecord : { x : Float, y : Float, z : Float } -> Vec3
fromRecord =
    Guida.Kernel.MJS.v3fromRecord


{-| Vector addition: a + b
-}
add : Vec3 -> Vec3 -> Vec3
add =
    Guida.Kernel.MJS.v3add


{-| Vector subtraction: a - b
-}
sub : Vec3 -> Vec3 -> Vec3
sub =
    Guida.Kernel.MJS.v3sub


{-| Vector negation: -a
-}
negate : Vec3 -> Vec3
negate =
    Guida.Kernel.MJS.v3negate


{-| The normalized direction from b to a: (a - b) / |a - b|
-}
direction : Vec3 -> Vec3 -> Vec3
direction =
    Guida.Kernel.MJS.v3direction


{-| The length of the given vector: |a|
-}
length : Vec3 -> Float
length =
    Guida.Kernel.MJS.v3length


{-| The square of the length of the given vector: |a| \* |a|
-}
lengthSquared : Vec3 -> Float
lengthSquared =
    Guida.Kernel.MJS.v3lengthSquared


{-| The distance between two vectors.
-}
distance : Vec3 -> Vec3 -> Float
distance =
    Guida.Kernel.MJS.v3distance


{-| The square of the distance between two vectors.
-}
distanceSquared : Vec3 -> Vec3 -> Float
distanceSquared =
    Guida.Kernel.MJS.v3distanceSquared


{-| A unit vector with the same direction as the given vector: a / |a|
-}
normalize : Vec3 -> Vec3
normalize =
    Guida.Kernel.MJS.v3normalize


{-| Multiply the vector by a scalar: s \* v
-}
scale : Float -> Vec3 -> Vec3
scale =
    Guida.Kernel.MJS.v3scale


{-| The dot product of a and b
-}
dot : Vec3 -> Vec3 -> Float
dot =
    Guida.Kernel.MJS.v3dot


{-| The cross product of a and b
-}
cross : Vec3 -> Vec3 -> Vec3
cross =
    Guida.Kernel.MJS.v3cross
