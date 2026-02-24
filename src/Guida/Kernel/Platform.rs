/*

import Guida.Kernel.Debug exposing (crash)
import Guida.Kernel.Json exposing (run, wrap, unwrap, errorToString)
import Guida.Kernel.List exposing (Cons, Nil)
import Guida.Kernel.Process exposing (sleep)
import Guida.Kernel.Scheduler exposing (andThen, binding, rawSend, rawSpawn, receive, send, succeed)
import Guida.Kernel.Utils exposing (Tuple0)
import Result exposing (isOk)

*/

// AUTO-GENERATED RUST KERNEL SKELETON
// Source: src/Guida/Kernel/Platform.js
// NOTE: Top-level JS kernel imports/comments are preserved below.

// Detected kernel symbols: _Platform_initialize, _Platform_registerPreload, _Platform_setupEffects, _Platform_createManager, _Platform_instantiateManager, _Platform_leaf, _Platform_batch, _Platform_enqueueEffects, _Platform_dispatchEffects, _Platform_gatherEffects, _Platform_toEffect, _Platform_insert, _Platform_checkPortName, _Platform_outgoingPort, _Platform_setupOutgoingPort, _Platform_incomingPort, _Platform_setupIncomingPort, _Platform_export__PROD, _Platform_mergeExportsProd, _Platform_export__DEBUG, _Platform_mergeExportsDebug, _Platform_worker, _Platform_effectManagers, _Platform_sendToApp, _Platform_sendToSelf, _Platform_map, _Platform_effectsQueue, _Platform_effectsActive, _Platform_outgoingPortMap, _Platform_incomingPortMap

#[allow(non_snake_case)]
pub fn _Platform_initialize() {
    unimplemented!("_Platform_initialize from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_registerPreload() {
    unimplemented!("_Platform_registerPreload from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_setupEffects() {
    unimplemented!("_Platform_setupEffects from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_createManager() {
    unimplemented!("_Platform_createManager from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_instantiateManager() {
    unimplemented!("_Platform_instantiateManager from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_leaf() {
    unimplemented!("_Platform_leaf from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_batch() {
    unimplemented!("_Platform_batch from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_enqueueEffects() {
    unimplemented!("_Platform_enqueueEffects from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_dispatchEffects() {
    unimplemented!("_Platform_dispatchEffects from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_gatherEffects() {
    unimplemented!("_Platform_gatherEffects from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_toEffect() {
    unimplemented!("_Platform_toEffect from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_insert() {
    unimplemented!("_Platform_insert from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_checkPortName() {
    unimplemented!("_Platform_checkPortName from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_outgoingPort() {
    unimplemented!("_Platform_outgoingPort from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_setupOutgoingPort() {
    unimplemented!("_Platform_setupOutgoingPort from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_incomingPort() {
    unimplemented!("_Platform_incomingPort from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_setupIncomingPort() {
    unimplemented!("_Platform_setupIncomingPort from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_export__PROD() {
    unimplemented!("_Platform_export__PROD from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_mergeExportsProd() {
    unimplemented!("_Platform_mergeExportsProd from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_export__DEBUG() {
    unimplemented!("_Platform_export__DEBUG from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_mergeExportsDebug() {
    unimplemented!("_Platform_mergeExportsDebug from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_worker() {
    unimplemented!("_Platform_worker from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_effectManagers() {
    unimplemented!("_Platform_effectManagers from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_sendToApp() {
    unimplemented!("_Platform_sendToApp from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_sendToSelf() {
    unimplemented!("_Platform_sendToSelf from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_map() {
    unimplemented!("_Platform_map from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_effectsQueue() {
    unimplemented!("_Platform_effectsQueue from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_effectsActive() {
    unimplemented!("_Platform_effectsActive from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_outgoingPortMap() {
    unimplemented!("_Platform_outgoingPortMap from Platform.js");
}

#[allow(non_snake_case)]
pub fn _Platform_incomingPortMap() {
    unimplemented!("_Platform_incomingPortMap from Platform.js");
}
