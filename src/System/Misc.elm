module System.Misc exposing
    ( Error(..)
    , HttpExceptionContent(..)
    , HttpResponse(..)
    , HttpStatus(..)
    , MultiPart
    , SomeException(..)
    , filePart
    , getArchive
    , httpHLocation
    , httpResponseHeaders
    , httpResponseStatus
    , httpStatusCode
    , httpUpload
    , jsonPart
    , readString
    , replGetInputLine
    , stringPart
    , writeString
    )

{-| Miscellaneous functions that don't fit anywhere else.
-}

import Guida.Kernel.Misc
import Json.Encode as Encode
import Task exposing (Task)


{-| Write a string to a file.
-}
writeString : String -> String -> Task Never ()
writeString path content =
    Guida.Kernel.Misc.writeString path content


{-| Read a string from a file.
-}
readString : String -> Task Never String
readString path =
    Guida.Kernel.Misc.readString path


{-| Get a line of input from the user in the REPL.
-}
replGetInputLine : String -> Task Never (Maybe String)
replGetInputLine prompt =
    Guida.Kernel.Misc.replGetInputLine prompt


{-| Download a file from the given URL and return its content as a string,
along with the content type.
-}
getArchive : String -> Task Never ( String, List ( String, String ) )
getArchive url =
    Guida.Kernel.Misc.getArchive url



-- UPLOAD


type MultiPart
    = FilePart String String
    | JsonPart String String Encode.Value
    | StringPart String String


filePart : String -> String -> MultiPart
filePart name filePath =
    FilePart name filePath


jsonPart : String -> String -> Encode.Value -> MultiPart
jsonPart name filePath value =
    JsonPart name filePath value


stringPart : String -> String -> MultiPart
stringPart name string =
    StringPart name string


{-| Upload a file to the given URL with the specified headers and parts.
-}
httpUpload : String -> List ( String, String ) -> List MultiPart -> Task Never (Result Error ())
httpUpload url headers parts =
    Guida.Kernel.Misc.httpUpload url headers parts



-- EXCEPTIONS


type Error
    = BadUrl String String
    | BadHttp String HttpExceptionContent
    | BadMystery String SomeException



-- Network.HTTP.Client


type HttpExceptionContent
    = StatusCodeException (HttpResponse ()) String
    | TooManyRedirects (List (HttpResponse ()))
    | ConnectionFailure SomeException


type HttpResponse body
    = HttpResponse
        { responseStatus : HttpStatus
        , responseHeaders : HttpResponseHeaders
        }


type alias HttpResponseHeaders =
    List ( String, String )


httpResponseStatus : HttpResponse body -> HttpStatus
httpResponseStatus (HttpResponse { responseStatus }) =
    responseStatus


httpStatusCode : HttpStatus -> Int
httpStatusCode (HttpStatus statusCode _) =
    statusCode


httpResponseHeaders : HttpResponse body -> HttpResponseHeaders
httpResponseHeaders (HttpResponse { responseHeaders }) =
    responseHeaders


httpHLocation : String
httpHLocation =
    "Location"


type HttpStatus
    = HttpStatus Int String



-- Control.Exception


type SomeException
    = SomeException
