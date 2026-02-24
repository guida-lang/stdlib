/*

import Array exposing (initialize)
import Guida.Kernel.List exposing (Cons, Nil, fromArray)
import Guida.Kernel.Utils exposing (Tuple2)
import Json.Decode as Json exposing (Field, Index, OneOf, Failure, errorToString)
import List exposing (reverse)
import Maybe exposing (Just, Nothing)
import Result exposing (Ok, Err, isOk)

*/

// AUTO-GENERATED RUST KERNEL SKELETON
// Source: src/Guida/Kernel/Json.js
// NOTE: Top-level JS kernel imports/comments are preserved below.

// Detected kernel symbols: _Json_errorToString, _Json_succeed, _Json_fail, _Json_decodePrim, _Json_decodeList, _Json_decodeArray, _Json_decodeNull, _Json_decodeKeyValuePairs, _Json_mapMany, _Json_oneOf, _Json_runHelp, _Json_runArrayDecoder, _Json_isArray, _Json_toElmArray, _Json_expecting, _Json_equality, _Json_listEquality, _Json_wrap__DEBUG, _Json_unwrap__DEBUG, _Json_wrap__PROD, _Json_unwrap__PROD, _Json_emptyArray, _Json_emptyObject, _Json_addEntry, _Json_decodeInt, _Json_decodeBool, _Json_decodeFloat, _Json_decodeValue, _Json_decodeString, _Json_decodeField, _Json_decodeIndex, _Json_decodeBytes, _Json_andThen, _Json_map1, _Json_map2, _Json_map3, _Json_map4, _Json_map5, _Json_map6, _Json_map7, _Json_map8, _Json_runOnString, _Json_run, _Json_encode, _Json_addField, _Json_encodeNull, _Json_encodeBytes

#[allow(non_snake_case)]
pub fn _Json_errorToString() {
    unimplemented!("_Json_errorToString from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_succeed() {
    unimplemented!("_Json_succeed from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_fail() {
    unimplemented!("_Json_fail from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodePrim() {
    unimplemented!("_Json_decodePrim from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeList() {
    unimplemented!("_Json_decodeList from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeArray() {
    unimplemented!("_Json_decodeArray from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeNull() {
    unimplemented!("_Json_decodeNull from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeKeyValuePairs() {
    unimplemented!("_Json_decodeKeyValuePairs from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_mapMany() {
    unimplemented!("_Json_mapMany from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_oneOf() {
    unimplemented!("_Json_oneOf from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_runHelp() {
    unimplemented!("_Json_runHelp from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_runArrayDecoder() {
    unimplemented!("_Json_runArrayDecoder from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_isArray() {
    unimplemented!("_Json_isArray from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_toElmArray() {
    unimplemented!("_Json_toElmArray from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_expecting() {
    unimplemented!("_Json_expecting from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_equality() {
    unimplemented!("_Json_equality from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_listEquality() {
    unimplemented!("_Json_listEquality from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_wrap__DEBUG() {
    unimplemented!("_Json_wrap__DEBUG from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_unwrap__DEBUG() {
    unimplemented!("_Json_unwrap__DEBUG from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_wrap__PROD() {
    unimplemented!("_Json_wrap__PROD from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_unwrap__PROD() {
    unimplemented!("_Json_unwrap__PROD from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_emptyArray() {
    unimplemented!("_Json_emptyArray from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_emptyObject() {
    unimplemented!("_Json_emptyObject from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_addEntry() {
    unimplemented!("_Json_addEntry from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeInt() {
    unimplemented!("_Json_decodeInt from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeBool() {
    unimplemented!("_Json_decodeBool from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeFloat() {
    unimplemented!("_Json_decodeFloat from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeValue() {
    unimplemented!("_Json_decodeValue from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeString() {
    unimplemented!("_Json_decodeString from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeField() {
    unimplemented!("_Json_decodeField from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeIndex() {
    unimplemented!("_Json_decodeIndex from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_decodeBytes() {
    unimplemented!("_Json_decodeBytes from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_andThen() {
    unimplemented!("_Json_andThen from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map1() {
    unimplemented!("_Json_map1 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map2() {
    unimplemented!("_Json_map2 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map3() {
    unimplemented!("_Json_map3 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map4() {
    unimplemented!("_Json_map4 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map5() {
    unimplemented!("_Json_map5 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map6() {
    unimplemented!("_Json_map6 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map7() {
    unimplemented!("_Json_map7 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_map8() {
    unimplemented!("_Json_map8 from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_runOnString() {
    unimplemented!("_Json_runOnString from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_run() {
    unimplemented!("_Json_run from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_encode() {
    unimplemented!("_Json_encode from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_addField() {
    unimplemented!("_Json_addField from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_encodeNull() {
    unimplemented!("_Json_encodeNull from Json.js");
}

#[allow(non_snake_case)]
pub fn _Json_encodeBytes() {
    unimplemented!("_Json_encodeBytes from Json.js");
}
