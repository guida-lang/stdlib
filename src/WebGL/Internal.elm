module WebGL.Internal exposing
    ( Option(..)
    , Setting(..)
    , enableOption
    , enableSetting
    )

import Guida.Kernel.WebGL


type Option
    = Alpha Bool
    | Depth Float
    | Stencil Int
    | Antialias
    | ClearColor Float Float Float Float
    | PreserveDrawingBuffer


enableOption : () -> Option -> ()
enableOption ctx option =
    case option of
        Alpha _ ->
            Guida.Kernel.WebGL.enableAlpha ctx option

        Depth _ ->
            Guida.Kernel.WebGL.enableDepth ctx option

        Stencil _ ->
            Guida.Kernel.WebGL.enableStencil ctx option

        Antialias ->
            Guida.Kernel.WebGL.enableAntialias ctx option

        ClearColor _ _ _ _ ->
            Guida.Kernel.WebGL.enableClearColor ctx option

        PreserveDrawingBuffer ->
            Guida.Kernel.WebGL.enablePreserveDrawingBuffer ctx option


type Setting
    = Blend Int Int Int Int Int Int Float Float Float Float
    | DepthTest Int Bool Float Float
    | StencilTest Int Int Int Int Int Int Int Int Int Int Int
    | Scissor Int Int Int Int
    | ColorMask Bool Bool Bool Bool
    | CullFace Int
    | PolygonOffset Float Float
    | SampleCoverage Float Bool
    | SampleAlphaToCoverage


enableSetting : () -> Setting -> ()
enableSetting cache setting =
    case setting of
        Blend _ _ _ _ _ _ _ _ _ _ ->
            Guida.Kernel.WebGL.enableBlend cache setting

        DepthTest _ _ _ _ ->
            Guida.Kernel.WebGL.enableDepthTest cache setting

        StencilTest _ _ _ _ _ _ _ _ _ _ _ ->
            Guida.Kernel.WebGL.enableStencilTest cache setting

        Scissor _ _ _ _ ->
            Guida.Kernel.WebGL.enableScissor cache setting

        ColorMask _ _ _ _ ->
            Guida.Kernel.WebGL.enableColorMask cache setting

        CullFace _ ->
            Guida.Kernel.WebGL.enableCullFace cache setting

        PolygonOffset _ _ ->
            Guida.Kernel.WebGL.enablePolygonOffset cache setting

        SampleCoverage _ _ ->
            Guida.Kernel.WebGL.enableSampleCoverage cache setting

        SampleAlphaToCoverage ->
            Guida.Kernel.WebGL.enableSampleAlphaToCoverage cache
