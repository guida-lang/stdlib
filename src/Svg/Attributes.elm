module Svg.Attributes exposing
    ( accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
    , amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
    , azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
    , capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
    , d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
    , elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
    , format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
    , gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
    , ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
    , kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
    , limitingConeAngle, local, markerHeight, markerUnits, markerWidth
    , maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
    , name, numOctaves, offset, operator, order, orient, orientation, origin
    , overlinePosition, overlineThickness, panose1, path, pathLength
    , patternContentUnits, patternTransform, patternUnits, pointOrder, points
    , pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
    , primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
    , repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
    , rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
    , speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
    , strikethroughPosition, strikethroughThickness, string, style, surfaceScale
    , systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
    , transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
    , unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
    , values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
    , width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
    , xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
    , xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan
    , alignmentBaseline, baselineShift, clipPath, clipRule, clip
    , colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
    , color, cursor, direction, display, dominantBaseline, enableBackground
    , fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
    , fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
    , glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
    , kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
    , mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
    , stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
    , strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
    , textAnchor, textDecoration, textRendering, unicodeBidi, visibility
    , wordSpacing, writingMode
    )

{-|


# Regular attributes

@docs accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
@docs amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
@docs azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
@docs capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
@docs d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
@docs elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
@docs format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
@docs gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
@docs ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
@docs kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
@docs limitingConeAngle, local, markerHeight, markerUnits, markerWidth
@docs maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
@docs name, numOctaves, offset, operator, order, orient, orientation, origin
@docs overlinePosition, overlineThickness, panose1, path, pathLength
@docs patternContentUnits, patternTransform, patternUnits, pointOrder, points
@docs pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
@docs primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
@docs repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
@docs rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
@docs speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
@docs strikethroughPosition, strikethroughThickness, string, style, surfaceScale
@docs systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
@docs transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
@docs unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
@docs values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
@docs width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
@docs xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
@docs xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan


# Presentation attributes

@docs alignmentBaseline, baselineShift, clipPath, clipRule, clip
@docs colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
@docs color, cursor, direction, display, dominantBaseline, enableBackground
@docs fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
@docs fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
@docs glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
@docs kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
@docs mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
@docs stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
@docs strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
@docs textAnchor, textDecoration, textRendering, unicodeBidi, visibility
@docs wordSpacing, writingMode

-}

import Guida.Kernel.VirtualDom
import Svg exposing (Attribute)



-- REGULAR ATTRIBUTES


{-| -}
accentHeight : String -> Attribute msg
accentHeight =
    Guida.Kernel.VirtualDom.attribute "accent-height"


{-| -}
accelerate : String -> Attribute msg
accelerate =
    Guida.Kernel.VirtualDom.attribute "accelerate"


{-| -}
accumulate : String -> Attribute msg
accumulate =
    Guida.Kernel.VirtualDom.attribute "accumulate"


{-| -}
additive : String -> Attribute msg
additive =
    Guida.Kernel.VirtualDom.attribute "additive"


{-| -}
alphabetic : String -> Attribute msg
alphabetic =
    Guida.Kernel.VirtualDom.attribute "alphabetic"


{-| -}
allowReorder : String -> Attribute msg
allowReorder =
    Guida.Kernel.VirtualDom.attribute "allowReorder"


{-| -}
amplitude : String -> Attribute msg
amplitude =
    Guida.Kernel.VirtualDom.attribute "amplitude"


{-| -}
arabicForm : String -> Attribute msg
arabicForm =
    Guida.Kernel.VirtualDom.attribute "arabic-form"


{-| -}
ascent : String -> Attribute msg
ascent =
    Guida.Kernel.VirtualDom.attribute "ascent"


{-| -}
attributeName : String -> Attribute msg
attributeName =
    Guida.Kernel.VirtualDom.attribute "attributeName"


{-| -}
attributeType : String -> Attribute msg
attributeType =
    Guida.Kernel.VirtualDom.attribute "attributeType"


{-| -}
autoReverse : String -> Attribute msg
autoReverse =
    Guida.Kernel.VirtualDom.attribute "autoReverse"


{-| -}
azimuth : String -> Attribute msg
azimuth =
    Guida.Kernel.VirtualDom.attribute "azimuth"


{-| -}
baseFrequency : String -> Attribute msg
baseFrequency =
    Guida.Kernel.VirtualDom.attribute "baseFrequency"


{-| -}
baseProfile : String -> Attribute msg
baseProfile =
    Guida.Kernel.VirtualDom.attribute "baseProfile"


{-| -}
bbox : String -> Attribute msg
bbox =
    Guida.Kernel.VirtualDom.attribute "bbox"


{-| -}
begin : String -> Attribute msg
begin =
    Guida.Kernel.VirtualDom.attribute "begin"


{-| -}
bias : String -> Attribute msg
bias =
    Guida.Kernel.VirtualDom.attribute "bias"


{-| -}
by : String -> Attribute msg
by value =
    Guida.Kernel.VirtualDom.attribute "by" (Guida.Kernel.VirtualDom.noJavaScriptUri value)


{-| -}
calcMode : String -> Attribute msg
calcMode =
    Guida.Kernel.VirtualDom.attribute "calcMode"


{-| -}
capHeight : String -> Attribute msg
capHeight =
    Guida.Kernel.VirtualDom.attribute "cap-height"


{-| -}
class : String -> Attribute msg
class =
    Guida.Kernel.VirtualDom.attribute "class"


{-| -}
clipPathUnits : String -> Attribute msg
clipPathUnits =
    Guida.Kernel.VirtualDom.attribute "clipPathUnits"


{-| -}
contentScriptType : String -> Attribute msg
contentScriptType =
    Guida.Kernel.VirtualDom.attribute "contentScriptType"


{-| -}
contentStyleType : String -> Attribute msg
contentStyleType =
    Guida.Kernel.VirtualDom.attribute "contentStyleType"


{-| -}
cx : String -> Attribute msg
cx =
    Guida.Kernel.VirtualDom.attribute "cx"


{-| -}
cy : String -> Attribute msg
cy =
    Guida.Kernel.VirtualDom.attribute "cy"


{-| -}
d : String -> Attribute msg
d =
    Guida.Kernel.VirtualDom.attribute "d"


{-| -}
decelerate : String -> Attribute msg
decelerate =
    Guida.Kernel.VirtualDom.attribute "decelerate"


{-| -}
descent : String -> Attribute msg
descent =
    Guida.Kernel.VirtualDom.attribute "descent"


{-| -}
diffuseConstant : String -> Attribute msg
diffuseConstant =
    Guida.Kernel.VirtualDom.attribute "diffuseConstant"


{-| -}
divisor : String -> Attribute msg
divisor =
    Guida.Kernel.VirtualDom.attribute "divisor"


{-| -}
dur : String -> Attribute msg
dur =
    Guida.Kernel.VirtualDom.attribute "dur"


{-| -}
dx : String -> Attribute msg
dx =
    Guida.Kernel.VirtualDom.attribute "dx"


{-| -}
dy : String -> Attribute msg
dy =
    Guida.Kernel.VirtualDom.attribute "dy"


{-| -}
edgeMode : String -> Attribute msg
edgeMode =
    Guida.Kernel.VirtualDom.attribute "edgeMode"


{-| -}
elevation : String -> Attribute msg
elevation =
    Guida.Kernel.VirtualDom.attribute "elevation"


{-| -}
end : String -> Attribute msg
end =
    Guida.Kernel.VirtualDom.attribute "end"


{-| -}
exponent : String -> Attribute msg
exponent =
    Guida.Kernel.VirtualDom.attribute "exponent"


{-| -}
externalResourcesRequired : String -> Attribute msg
externalResourcesRequired =
    Guida.Kernel.VirtualDom.attribute "externalResourcesRequired"


{-| -}
filterRes : String -> Attribute msg
filterRes =
    Guida.Kernel.VirtualDom.attribute "filterRes"


{-| -}
filterUnits : String -> Attribute msg
filterUnits =
    Guida.Kernel.VirtualDom.attribute "filterUnits"


{-| -}
format : String -> Attribute msg
format =
    Guida.Kernel.VirtualDom.attribute "format"


{-| -}
from : String -> Attribute msg
from value =
    Guida.Kernel.VirtualDom.attribute "from" (Guida.Kernel.VirtualDom.noJavaScriptUri value)


{-| -}
fx : String -> Attribute msg
fx =
    Guida.Kernel.VirtualDom.attribute "fx"


{-| -}
fy : String -> Attribute msg
fy =
    Guida.Kernel.VirtualDom.attribute "fy"


{-| -}
g1 : String -> Attribute msg
g1 =
    Guida.Kernel.VirtualDom.attribute "g1"


{-| -}
g2 : String -> Attribute msg
g2 =
    Guida.Kernel.VirtualDom.attribute "g2"


{-| -}
glyphName : String -> Attribute msg
glyphName =
    Guida.Kernel.VirtualDom.attribute "glyph-name"


{-| -}
glyphRef : String -> Attribute msg
glyphRef =
    Guida.Kernel.VirtualDom.attribute "glyphRef"


{-| -}
gradientTransform : String -> Attribute msg
gradientTransform =
    Guida.Kernel.VirtualDom.attribute "gradientTransform"


{-| -}
gradientUnits : String -> Attribute msg
gradientUnits =
    Guida.Kernel.VirtualDom.attribute "gradientUnits"


{-| -}
hanging : String -> Attribute msg
hanging =
    Guida.Kernel.VirtualDom.attribute "hanging"


{-| -}
height : String -> Attribute msg
height =
    Guida.Kernel.VirtualDom.attribute "height"


{-| -}
horizAdvX : String -> Attribute msg
horizAdvX =
    Guida.Kernel.VirtualDom.attribute "horiz-adv-x"


{-| -}
horizOriginX : String -> Attribute msg
horizOriginX =
    Guida.Kernel.VirtualDom.attribute "horiz-origin-x"


{-| -}
horizOriginY : String -> Attribute msg
horizOriginY =
    Guida.Kernel.VirtualDom.attribute "horiz-origin-y"


{-| -}
id : String -> Attribute msg
id =
    Guida.Kernel.VirtualDom.attribute "id"


{-| -}
ideographic : String -> Attribute msg
ideographic =
    Guida.Kernel.VirtualDom.attribute "ideographic"


{-| -}
in_ : String -> Attribute msg
in_ =
    Guida.Kernel.VirtualDom.attribute "in"


{-| -}
in2 : String -> Attribute msg
in2 =
    Guida.Kernel.VirtualDom.attribute "in2"


{-| -}
intercept : String -> Attribute msg
intercept =
    Guida.Kernel.VirtualDom.attribute "intercept"


{-| -}
k : String -> Attribute msg
k =
    Guida.Kernel.VirtualDom.attribute "k"


{-| -}
k1 : String -> Attribute msg
k1 =
    Guida.Kernel.VirtualDom.attribute "k1"


{-| -}
k2 : String -> Attribute msg
k2 =
    Guida.Kernel.VirtualDom.attribute "k2"


{-| -}
k3 : String -> Attribute msg
k3 =
    Guida.Kernel.VirtualDom.attribute "k3"


{-| -}
k4 : String -> Attribute msg
k4 =
    Guida.Kernel.VirtualDom.attribute "k4"


{-| -}
kernelMatrix : String -> Attribute msg
kernelMatrix =
    Guida.Kernel.VirtualDom.attribute "kernelMatrix"


{-| -}
kernelUnitLength : String -> Attribute msg
kernelUnitLength =
    Guida.Kernel.VirtualDom.attribute "kernelUnitLength"


{-| -}
keyPoints : String -> Attribute msg
keyPoints =
    Guida.Kernel.VirtualDom.attribute "keyPoints"


{-| -}
keySplines : String -> Attribute msg
keySplines =
    Guida.Kernel.VirtualDom.attribute "keySplines"


{-| -}
keyTimes : String -> Attribute msg
keyTimes =
    Guida.Kernel.VirtualDom.attribute "keyTimes"


{-| -}
lang : String -> Attribute msg
lang =
    Guida.Kernel.VirtualDom.attribute "lang"


{-| -}
lengthAdjust : String -> Attribute msg
lengthAdjust =
    Guida.Kernel.VirtualDom.attribute "lengthAdjust"


{-| -}
limitingConeAngle : String -> Attribute msg
limitingConeAngle =
    Guida.Kernel.VirtualDom.attribute "limitingConeAngle"


{-| -}
local : String -> Attribute msg
local =
    Guida.Kernel.VirtualDom.attribute "local"


{-| -}
markerHeight : String -> Attribute msg
markerHeight =
    Guida.Kernel.VirtualDom.attribute "markerHeight"


{-| -}
markerUnits : String -> Attribute msg
markerUnits =
    Guida.Kernel.VirtualDom.attribute "markerUnits"


{-| -}
markerWidth : String -> Attribute msg
markerWidth =
    Guida.Kernel.VirtualDom.attribute "markerWidth"


{-| -}
maskContentUnits : String -> Attribute msg
maskContentUnits =
    Guida.Kernel.VirtualDom.attribute "maskContentUnits"


{-| -}
maskUnits : String -> Attribute msg
maskUnits =
    Guida.Kernel.VirtualDom.attribute "maskUnits"


{-| -}
mathematical : String -> Attribute msg
mathematical =
    Guida.Kernel.VirtualDom.attribute "mathematical"


{-| -}
max : String -> Attribute msg
max =
    Guida.Kernel.VirtualDom.attribute "max"


{-| -}
media : String -> Attribute msg
media =
    Guida.Kernel.VirtualDom.attribute "media"


{-| -}
method : String -> Attribute msg
method =
    Guida.Kernel.VirtualDom.attribute "method"


{-| -}
min : String -> Attribute msg
min =
    Guida.Kernel.VirtualDom.attribute "min"


{-| -}
mode : String -> Attribute msg
mode =
    Guida.Kernel.VirtualDom.attribute "mode"


{-| -}
name : String -> Attribute msg
name =
    Guida.Kernel.VirtualDom.attribute "name"


{-| -}
numOctaves : String -> Attribute msg
numOctaves =
    Guida.Kernel.VirtualDom.attribute "numOctaves"


{-| -}
offset : String -> Attribute msg
offset =
    Guida.Kernel.VirtualDom.attribute "offset"


{-| -}
operator : String -> Attribute msg
operator =
    Guida.Kernel.VirtualDom.attribute "operator"


{-| -}
order : String -> Attribute msg
order =
    Guida.Kernel.VirtualDom.attribute "order"


{-| -}
orient : String -> Attribute msg
orient =
    Guida.Kernel.VirtualDom.attribute "orient"


{-| -}
orientation : String -> Attribute msg
orientation =
    Guida.Kernel.VirtualDom.attribute "orientation"


{-| -}
origin : String -> Attribute msg
origin =
    Guida.Kernel.VirtualDom.attribute "origin"


{-| -}
overlinePosition : String -> Attribute msg
overlinePosition =
    Guida.Kernel.VirtualDom.attribute "overline-position"


{-| -}
overlineThickness : String -> Attribute msg
overlineThickness =
    Guida.Kernel.VirtualDom.attribute "overline-thickness"


{-| -}
panose1 : String -> Attribute msg
panose1 =
    Guida.Kernel.VirtualDom.attribute "panose-1"


{-| -}
path : String -> Attribute msg
path =
    Guida.Kernel.VirtualDom.attribute "path"


{-| -}
pathLength : String -> Attribute msg
pathLength =
    Guida.Kernel.VirtualDom.attribute "pathLength"


{-| -}
patternContentUnits : String -> Attribute msg
patternContentUnits =
    Guida.Kernel.VirtualDom.attribute "patternContentUnits"


{-| -}
patternTransform : String -> Attribute msg
patternTransform =
    Guida.Kernel.VirtualDom.attribute "patternTransform"


{-| -}
patternUnits : String -> Attribute msg
patternUnits =
    Guida.Kernel.VirtualDom.attribute "patternUnits"


{-| -}
pointOrder : String -> Attribute msg
pointOrder =
    Guida.Kernel.VirtualDom.attribute "point-order"


{-| -}
points : String -> Attribute msg
points =
    Guida.Kernel.VirtualDom.attribute "points"


{-| -}
pointsAtX : String -> Attribute msg
pointsAtX =
    Guida.Kernel.VirtualDom.attribute "pointsAtX"


{-| -}
pointsAtY : String -> Attribute msg
pointsAtY =
    Guida.Kernel.VirtualDom.attribute "pointsAtY"


{-| -}
pointsAtZ : String -> Attribute msg
pointsAtZ =
    Guida.Kernel.VirtualDom.attribute "pointsAtZ"


{-| -}
preserveAlpha : String -> Attribute msg
preserveAlpha =
    Guida.Kernel.VirtualDom.attribute "preserveAlpha"


{-| -}
preserveAspectRatio : String -> Attribute msg
preserveAspectRatio =
    Guida.Kernel.VirtualDom.attribute "preserveAspectRatio"


{-| -}
primitiveUnits : String -> Attribute msg
primitiveUnits =
    Guida.Kernel.VirtualDom.attribute "primitiveUnits"


{-| -}
r : String -> Attribute msg
r =
    Guida.Kernel.VirtualDom.attribute "r"


{-| -}
radius : String -> Attribute msg
radius =
    Guida.Kernel.VirtualDom.attribute "radius"


{-| -}
refX : String -> Attribute msg
refX =
    Guida.Kernel.VirtualDom.attribute "refX"


{-| -}
refY : String -> Attribute msg
refY =
    Guida.Kernel.VirtualDom.attribute "refY"


{-| -}
renderingIntent : String -> Attribute msg
renderingIntent =
    Guida.Kernel.VirtualDom.attribute "rendering-intent"


{-| -}
repeatCount : String -> Attribute msg
repeatCount =
    Guida.Kernel.VirtualDom.attribute "repeatCount"


{-| -}
repeatDur : String -> Attribute msg
repeatDur =
    Guida.Kernel.VirtualDom.attribute "repeatDur"


{-| -}
requiredExtensions : String -> Attribute msg
requiredExtensions =
    Guida.Kernel.VirtualDom.attribute "requiredExtensions"


{-| -}
requiredFeatures : String -> Attribute msg
requiredFeatures =
    Guida.Kernel.VirtualDom.attribute "requiredFeatures"


{-| -}
restart : String -> Attribute msg
restart =
    Guida.Kernel.VirtualDom.attribute "restart"


{-| -}
result : String -> Attribute msg
result =
    Guida.Kernel.VirtualDom.attribute "result"


{-| -}
rotate : String -> Attribute msg
rotate =
    Guida.Kernel.VirtualDom.attribute "rotate"


{-| -}
rx : String -> Attribute msg
rx =
    Guida.Kernel.VirtualDom.attribute "rx"


{-| -}
ry : String -> Attribute msg
ry =
    Guida.Kernel.VirtualDom.attribute "ry"


{-| -}
scale : String -> Attribute msg
scale =
    Guida.Kernel.VirtualDom.attribute "scale"


{-| -}
seed : String -> Attribute msg
seed =
    Guida.Kernel.VirtualDom.attribute "seed"


{-| -}
slope : String -> Attribute msg
slope =
    Guida.Kernel.VirtualDom.attribute "slope"


{-| -}
spacing : String -> Attribute msg
spacing =
    Guida.Kernel.VirtualDom.attribute "spacing"


{-| -}
specularConstant : String -> Attribute msg
specularConstant =
    Guida.Kernel.VirtualDom.attribute "specularConstant"


{-| -}
specularExponent : String -> Attribute msg
specularExponent =
    Guida.Kernel.VirtualDom.attribute "specularExponent"


{-| -}
speed : String -> Attribute msg
speed =
    Guida.Kernel.VirtualDom.attribute "speed"


{-| -}
spreadMethod : String -> Attribute msg
spreadMethod =
    Guida.Kernel.VirtualDom.attribute "spreadMethod"


{-| -}
startOffset : String -> Attribute msg
startOffset =
    Guida.Kernel.VirtualDom.attribute "startOffset"


{-| -}
stdDeviation : String -> Attribute msg
stdDeviation =
    Guida.Kernel.VirtualDom.attribute "stdDeviation"


{-| -}
stemh : String -> Attribute msg
stemh =
    Guida.Kernel.VirtualDom.attribute "stemh"


{-| -}
stemv : String -> Attribute msg
stemv =
    Guida.Kernel.VirtualDom.attribute "stemv"


{-| -}
stitchTiles : String -> Attribute msg
stitchTiles =
    Guida.Kernel.VirtualDom.attribute "stitchTiles"


{-| -}
strikethroughPosition : String -> Attribute msg
strikethroughPosition =
    Guida.Kernel.VirtualDom.attribute "strikethrough-position"


{-| -}
strikethroughThickness : String -> Attribute msg
strikethroughThickness =
    Guida.Kernel.VirtualDom.attribute "strikethrough-thickness"


{-| -}
string : String -> Attribute msg
string =
    Guida.Kernel.VirtualDom.attribute "string"


{-| -}
style : String -> Attribute msg
style =
    Guida.Kernel.VirtualDom.attribute "style"


{-| -}
surfaceScale : String -> Attribute msg
surfaceScale =
    Guida.Kernel.VirtualDom.attribute "surfaceScale"


{-| -}
systemLanguage : String -> Attribute msg
systemLanguage =
    Guida.Kernel.VirtualDom.attribute "systemLanguage"


{-| -}
tableValues : String -> Attribute msg
tableValues =
    Guida.Kernel.VirtualDom.attribute "tableValues"


{-| -}
target : String -> Attribute msg
target =
    Guida.Kernel.VirtualDom.attribute "target"


{-| -}
targetX : String -> Attribute msg
targetX =
    Guida.Kernel.VirtualDom.attribute "targetX"


{-| -}
targetY : String -> Attribute msg
targetY =
    Guida.Kernel.VirtualDom.attribute "targetY"


{-| -}
textLength : String -> Attribute msg
textLength =
    Guida.Kernel.VirtualDom.attribute "textLength"


{-| -}
title : String -> Attribute msg
title =
    Guida.Kernel.VirtualDom.attribute "title"


{-| -}
to : String -> Attribute msg
to value =
    Guida.Kernel.VirtualDom.attribute "to" (Guida.Kernel.VirtualDom.noJavaScriptUri value)


{-| -}
transform : String -> Attribute msg
transform =
    Guida.Kernel.VirtualDom.attribute "transform"


{-| -}
type_ : String -> Attribute msg
type_ =
    Guida.Kernel.VirtualDom.attribute "type"


{-| -}
u1 : String -> Attribute msg
u1 =
    Guida.Kernel.VirtualDom.attribute "u1"


{-| -}
u2 : String -> Attribute msg
u2 =
    Guida.Kernel.VirtualDom.attribute "u2"


{-| -}
underlinePosition : String -> Attribute msg
underlinePosition =
    Guida.Kernel.VirtualDom.attribute "underline-position"


{-| -}
underlineThickness : String -> Attribute msg
underlineThickness =
    Guida.Kernel.VirtualDom.attribute "underline-thickness"


{-| -}
unicode : String -> Attribute msg
unicode =
    Guida.Kernel.VirtualDom.attribute "unicode"


{-| -}
unicodeRange : String -> Attribute msg
unicodeRange =
    Guida.Kernel.VirtualDom.attribute "unicode-range"


{-| -}
unitsPerEm : String -> Attribute msg
unitsPerEm =
    Guida.Kernel.VirtualDom.attribute "units-per-em"


{-| -}
vAlphabetic : String -> Attribute msg
vAlphabetic =
    Guida.Kernel.VirtualDom.attribute "v-alphabetic"


{-| -}
vHanging : String -> Attribute msg
vHanging =
    Guida.Kernel.VirtualDom.attribute "v-hanging"


{-| -}
vIdeographic : String -> Attribute msg
vIdeographic =
    Guida.Kernel.VirtualDom.attribute "v-ideographic"


{-| -}
vMathematical : String -> Attribute msg
vMathematical =
    Guida.Kernel.VirtualDom.attribute "v-mathematical"


{-| -}
values : String -> Attribute msg
values value =
    Guida.Kernel.VirtualDom.attribute "values" (Guida.Kernel.VirtualDom.noJavaScriptUri value)


{-| -}
version : String -> Attribute msg
version =
    Guida.Kernel.VirtualDom.attribute "version"


{-| -}
vertAdvY : String -> Attribute msg
vertAdvY =
    Guida.Kernel.VirtualDom.attribute "vert-adv-y"


{-| -}
vertOriginX : String -> Attribute msg
vertOriginX =
    Guida.Kernel.VirtualDom.attribute "vert-origin-x"


{-| -}
vertOriginY : String -> Attribute msg
vertOriginY =
    Guida.Kernel.VirtualDom.attribute "vert-origin-y"


{-| -}
viewBox : String -> Attribute msg
viewBox =
    Guida.Kernel.VirtualDom.attribute "viewBox"


{-| -}
viewTarget : String -> Attribute msg
viewTarget =
    Guida.Kernel.VirtualDom.attribute "viewTarget"


{-| -}
width : String -> Attribute msg
width =
    Guida.Kernel.VirtualDom.attribute "width"


{-| -}
widths : String -> Attribute msg
widths =
    Guida.Kernel.VirtualDom.attribute "widths"


{-| -}
x : String -> Attribute msg
x =
    Guida.Kernel.VirtualDom.attribute "x"


{-| -}
xHeight : String -> Attribute msg
xHeight =
    Guida.Kernel.VirtualDom.attribute "x-height"


{-| -}
x1 : String -> Attribute msg
x1 =
    Guida.Kernel.VirtualDom.attribute "x1"


{-| -}
x2 : String -> Attribute msg
x2 =
    Guida.Kernel.VirtualDom.attribute "x2"


{-| -}
xChannelSelector : String -> Attribute msg
xChannelSelector =
    Guida.Kernel.VirtualDom.attribute "xChannelSelector"


{-| -}
xlinkActuate : String -> Attribute msg
xlinkActuate =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"


{-| -}
xlinkArcrole : String -> Attribute msg
xlinkArcrole =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"


{-| -}
xlinkHref : String -> Attribute msg
xlinkHref value =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:href" (Guida.Kernel.VirtualDom.noJavaScriptUri value)


{-| -}
xlinkRole : String -> Attribute msg
xlinkRole =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:role"


{-| -}
xlinkShow : String -> Attribute msg
xlinkShow =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:show"


{-| -}
xlinkTitle : String -> Attribute msg
xlinkTitle =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:title"


{-| -}
xlinkType : String -> Attribute msg
xlinkType =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:type"


{-| -}
xmlBase : String -> Attribute msg
xmlBase =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"


{-| -}
xmlLang : String -> Attribute msg
xmlLang =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"


{-| -}
xmlSpace : String -> Attribute msg
xmlSpace =
    Guida.Kernel.VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


{-| -}
y : String -> Attribute msg
y =
    Guida.Kernel.VirtualDom.attribute "y"


{-| -}
y1 : String -> Attribute msg
y1 =
    Guida.Kernel.VirtualDom.attribute "y1"


{-| -}
y2 : String -> Attribute msg
y2 =
    Guida.Kernel.VirtualDom.attribute "y2"


{-| -}
yChannelSelector : String -> Attribute msg
yChannelSelector =
    Guida.Kernel.VirtualDom.attribute "yChannelSelector"


{-| -}
z : String -> Attribute msg
z =
    Guida.Kernel.VirtualDom.attribute "z"


{-| -}
zoomAndPan : String -> Attribute msg
zoomAndPan =
    Guida.Kernel.VirtualDom.attribute "zoomAndPan"



-- PRESENTATION ATTRIBUTES


{-| -}
alignmentBaseline : String -> Attribute msg
alignmentBaseline =
    Guida.Kernel.VirtualDom.attribute "alignment-baseline"


{-| -}
baselineShift : String -> Attribute msg
baselineShift =
    Guida.Kernel.VirtualDom.attribute "baseline-shift"


{-| -}
clipPath : String -> Attribute msg
clipPath =
    Guida.Kernel.VirtualDom.attribute "clip-path"


{-| -}
clipRule : String -> Attribute msg
clipRule =
    Guida.Kernel.VirtualDom.attribute "clip-rule"


{-| -}
clip : String -> Attribute msg
clip =
    Guida.Kernel.VirtualDom.attribute "clip"


{-| -}
colorInterpolationFilters : String -> Attribute msg
colorInterpolationFilters =
    Guida.Kernel.VirtualDom.attribute "color-interpolation-filters"


{-| -}
colorInterpolation : String -> Attribute msg
colorInterpolation =
    Guida.Kernel.VirtualDom.attribute "color-interpolation"


{-| -}
colorProfile : String -> Attribute msg
colorProfile =
    Guida.Kernel.VirtualDom.attribute "color-profile"


{-| -}
colorRendering : String -> Attribute msg
colorRendering =
    Guida.Kernel.VirtualDom.attribute "color-rendering"


{-| -}
color : String -> Attribute msg
color =
    Guida.Kernel.VirtualDom.attribute "color"


{-| -}
cursor : String -> Attribute msg
cursor =
    Guida.Kernel.VirtualDom.attribute "cursor"


{-| -}
direction : String -> Attribute msg
direction =
    Guida.Kernel.VirtualDom.attribute "direction"


{-| -}
display : String -> Attribute msg
display =
    Guida.Kernel.VirtualDom.attribute "display"


{-| -}
dominantBaseline : String -> Attribute msg
dominantBaseline =
    Guida.Kernel.VirtualDom.attribute "dominant-baseline"


{-| -}
enableBackground : String -> Attribute msg
enableBackground =
    Guida.Kernel.VirtualDom.attribute "enable-background"


{-| -}
fillOpacity : String -> Attribute msg
fillOpacity =
    Guida.Kernel.VirtualDom.attribute "fill-opacity"


{-| -}
fillRule : String -> Attribute msg
fillRule =
    Guida.Kernel.VirtualDom.attribute "fill-rule"


{-| -}
fill : String -> Attribute msg
fill =
    Guida.Kernel.VirtualDom.attribute "fill"


{-| -}
filter : String -> Attribute msg
filter =
    Guida.Kernel.VirtualDom.attribute "filter"


{-| -}
floodColor : String -> Attribute msg
floodColor =
    Guida.Kernel.VirtualDom.attribute "flood-color"


{-| -}
floodOpacity : String -> Attribute msg
floodOpacity =
    Guida.Kernel.VirtualDom.attribute "flood-opacity"


{-| -}
fontFamily : String -> Attribute msg
fontFamily =
    Guida.Kernel.VirtualDom.attribute "font-family"


{-| -}
fontSizeAdjust : String -> Attribute msg
fontSizeAdjust =
    Guida.Kernel.VirtualDom.attribute "font-size-adjust"


{-| -}
fontSize : String -> Attribute msg
fontSize =
    Guida.Kernel.VirtualDom.attribute "font-size"


{-| -}
fontStretch : String -> Attribute msg
fontStretch =
    Guida.Kernel.VirtualDom.attribute "font-stretch"


{-| -}
fontStyle : String -> Attribute msg
fontStyle =
    Guida.Kernel.VirtualDom.attribute "font-style"


{-| -}
fontVariant : String -> Attribute msg
fontVariant =
    Guida.Kernel.VirtualDom.attribute "font-variant"


{-| -}
fontWeight : String -> Attribute msg
fontWeight =
    Guida.Kernel.VirtualDom.attribute "font-weight"


{-| -}
glyphOrientationHorizontal : String -> Attribute msg
glyphOrientationHorizontal =
    Guida.Kernel.VirtualDom.attribute "glyph-orientation-horizontal"


{-| -}
glyphOrientationVertical : String -> Attribute msg
glyphOrientationVertical =
    Guida.Kernel.VirtualDom.attribute "glyph-orientation-vertical"


{-| -}
imageRendering : String -> Attribute msg
imageRendering =
    Guida.Kernel.VirtualDom.attribute "image-rendering"


{-| -}
kerning : String -> Attribute msg
kerning =
    Guida.Kernel.VirtualDom.attribute "kerning"


{-| -}
letterSpacing : String -> Attribute msg
letterSpacing =
    Guida.Kernel.VirtualDom.attribute "letter-spacing"


{-| -}
lightingColor : String -> Attribute msg
lightingColor =
    Guida.Kernel.VirtualDom.attribute "lighting-color"


{-| -}
markerEnd : String -> Attribute msg
markerEnd =
    Guida.Kernel.VirtualDom.attribute "marker-end"


{-| -}
markerMid : String -> Attribute msg
markerMid =
    Guida.Kernel.VirtualDom.attribute "marker-mid"


{-| -}
markerStart : String -> Attribute msg
markerStart =
    Guida.Kernel.VirtualDom.attribute "marker-start"


{-| -}
mask : String -> Attribute msg
mask =
    Guida.Kernel.VirtualDom.attribute "mask"


{-| -}
opacity : String -> Attribute msg
opacity =
    Guida.Kernel.VirtualDom.attribute "opacity"


{-| -}
overflow : String -> Attribute msg
overflow =
    Guida.Kernel.VirtualDom.attribute "overflow"


{-| -}
pointerEvents : String -> Attribute msg
pointerEvents =
    Guida.Kernel.VirtualDom.attribute "pointer-events"


{-| -}
shapeRendering : String -> Attribute msg
shapeRendering =
    Guida.Kernel.VirtualDom.attribute "shape-rendering"


{-| -}
stopColor : String -> Attribute msg
stopColor =
    Guida.Kernel.VirtualDom.attribute "stop-color"


{-| -}
stopOpacity : String -> Attribute msg
stopOpacity =
    Guida.Kernel.VirtualDom.attribute "stop-opacity"


{-| -}
strokeDasharray : String -> Attribute msg
strokeDasharray =
    Guida.Kernel.VirtualDom.attribute "stroke-dasharray"


{-| -}
strokeDashoffset : String -> Attribute msg
strokeDashoffset =
    Guida.Kernel.VirtualDom.attribute "stroke-dashoffset"


{-| -}
strokeLinecap : String -> Attribute msg
strokeLinecap =
    Guida.Kernel.VirtualDom.attribute "stroke-linecap"


{-| -}
strokeLinejoin : String -> Attribute msg
strokeLinejoin =
    Guida.Kernel.VirtualDom.attribute "stroke-linejoin"


{-| -}
strokeMiterlimit : String -> Attribute msg
strokeMiterlimit =
    Guida.Kernel.VirtualDom.attribute "stroke-miterlimit"


{-| -}
strokeOpacity : String -> Attribute msg
strokeOpacity =
    Guida.Kernel.VirtualDom.attribute "stroke-opacity"


{-| -}
strokeWidth : String -> Attribute msg
strokeWidth =
    Guida.Kernel.VirtualDom.attribute "stroke-width"


{-| -}
stroke : String -> Attribute msg
stroke =
    Guida.Kernel.VirtualDom.attribute "stroke"


{-| -}
textAnchor : String -> Attribute msg
textAnchor =
    Guida.Kernel.VirtualDom.attribute "text-anchor"


{-| -}
textDecoration : String -> Attribute msg
textDecoration =
    Guida.Kernel.VirtualDom.attribute "text-decoration"


{-| -}
textRendering : String -> Attribute msg
textRendering =
    Guida.Kernel.VirtualDom.attribute "text-rendering"


{-| -}
unicodeBidi : String -> Attribute msg
unicodeBidi =
    Guida.Kernel.VirtualDom.attribute "unicode-bidi"


{-| -}
visibility : String -> Attribute msg
visibility =
    Guida.Kernel.VirtualDom.attribute "visibility"


{-| -}
wordSpacing : String -> Attribute msg
wordSpacing =
    Guida.Kernel.VirtualDom.attribute "word-spacing"


{-| -}
writingMode : String -> Attribute msg
writingMode =
    Guida.Kernel.VirtualDom.attribute "writing-mode"
