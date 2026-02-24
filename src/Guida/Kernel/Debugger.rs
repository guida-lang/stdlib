/*

import Debugger.Expando as Expando exposing (S, Primitive, Sequence, Dictionary, Record, Constructor, ListSeq, SetSeq, ArraySeq)
import Debugger.Main as Main exposing (getUserModel, wrapInit, wrapUpdate, wrapSubs, cornerView, popoutView, NoOp, UserMsg, Up, Down, toBlockerType, initialWindowWidth, initialWindowHeight)
import Debugger.Overlay as Overlay exposing (BlockNone, BlockMost)
import Guida.Kernel.Browser exposing (makeAnimator)
import Guida.Kernel.Debug exposing (crash)
import Guida.Kernel.Json exposing (wrap)
import Guida.Kernel.List exposing (Cons, Nil)
import Guida.Kernel.Platform exposing (initialize)
import Guida.Kernel.Scheduler exposing (binding, succeed)
import Guida.Kernel.Utils exposing (Tuple0, Tuple2, ap)
import Guida.Kernel.VirtualDom exposing (node, applyPatches, diff, doc, makeStepper, map, render, virtualize, divertHrefToApp)
import Json.Decode as Json exposing (map)
import List exposing (map, reverse)
import Maybe exposing (Just, Nothing)
import Set exposing (foldr)
import Dict exposing (foldr, empty, insert)
import Array exposing (foldr)

*/

// AUTO-GENERATED RUST KERNEL SKELETON
// Source: src/Guida/Kernel/Debugger.js
// NOTE: Top-level JS kernel imports/comments are preserved below.

// Detected kernel symbols: _Debugger_unsafeCoerce, _Debugger_popout, _Debugger_isOpen, _Debugger_open, _Debugger_openWindow, _Debugger_scroll, _Debugger_upload, _Debugger_messageToString, _Debugger_init, _Debugger_addSlashes, _Debugger_updateBlocker, _Debugger_blocker, _Debugger_blockerToEvents, _Debugger_element, _Debugger_document, _Debugger_scrollTo, _Debugger_download, _Debugger_initCons, _Debugger_initKeyValueCons, _Debugger_mostEvents, _Debugger_allEvents

#[allow(non_snake_case)]
pub fn _Debugger_unsafeCoerce() {
    unimplemented!("_Debugger_unsafeCoerce from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_popout() {
    unimplemented!("_Debugger_popout from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_isOpen() {
    unimplemented!("_Debugger_isOpen from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_open() {
    unimplemented!("_Debugger_open from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_openWindow() {
    unimplemented!("_Debugger_openWindow from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_scroll() {
    unimplemented!("_Debugger_scroll from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_upload() {
    unimplemented!("_Debugger_upload from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_messageToString() {
    unimplemented!("_Debugger_messageToString from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_init() {
    unimplemented!("_Debugger_init from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_addSlashes() {
    unimplemented!("_Debugger_addSlashes from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_updateBlocker() {
    unimplemented!("_Debugger_updateBlocker from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_blocker() {
    unimplemented!("_Debugger_blocker from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_blockerToEvents() {
    unimplemented!("_Debugger_blockerToEvents from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_element() {
    unimplemented!("_Debugger_element from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_document() {
    unimplemented!("_Debugger_document from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_scrollTo() {
    unimplemented!("_Debugger_scrollTo from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_download() {
    unimplemented!("_Debugger_download from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_initCons() {
    unimplemented!("_Debugger_initCons from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_initKeyValueCons() {
    unimplemented!("_Debugger_initKeyValueCons from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_mostEvents() {
    unimplemented!("_Debugger_mostEvents from Debugger.js");
}

#[allow(non_snake_case)]
pub fn _Debugger_allEvents() {
    unimplemented!("_Debugger_allEvents from Debugger.js");
}
