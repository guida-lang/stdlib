/*

import Guida.Kernel.VirtualDom exposing (custom, doc)
import WebGL.Internal as WI exposing (enableSetting, enableOption)

*/

// AUTO-GENERATED RUST KERNEL SKELETON
// Source: src/Guida/Kernel/WebGL.js
// NOTE: Top-level JS kernel imports/comments are preserved below.

// Detected kernel symbols: _WebGL_listEach, _WebGL_listLength, _WebGL_doCompile, _WebGL_doLink, _WebGL_getAttributeInfo, _WebGL_doBindAttribute, _WebGL_doBindSetup, _WebGL_makeIndexedBuffer, _WebGL_getProgID, _WebGL_createUniformSetters, _WebGL_setUniforms, _WebGL_render, _WebGL_diff, _WebGL_guid, _WebGL_rAF, _WebGL_entity, _WebGL_enableBlend, _WebGL_enableDepthTest, _WebGL_enableStencilTest, _WebGL_enableScissor, _WebGL_enableColorMask, _WebGL_enableCullFace, _WebGL_enablePolygonOffset, _WebGL_enableSampleCoverage, _WebGL_enableSampleAlphaToCoverage, _WebGL_disableBlend, _WebGL_disableDepthTest, _WebGL_disableStencilTest, _WebGL_disableScissor, _WebGL_disableColorMask, _WebGL_disableCullFace, _WebGL_disablePolygonOffset, _WebGL_disableSampleCoverage, _WebGL_disableSampleAlphaToCoverage, _WebGL_settings, _WebGL_disableFunctions, _WebGL_drawGL, _WebGL_toHtml, _WebGL_enableAlpha, _WebGL_enableDepth, _WebGL_enableStencil, _WebGL_enableAntialias, _WebGL_enableClearColor, _WebGL_enablePreserveDrawingBuffer

#[allow(non_snake_case)]
pub fn _WebGL_listEach() {
    unimplemented!("_WebGL_listEach from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_listLength() {
    unimplemented!("_WebGL_listLength from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_doCompile() {
    unimplemented!("_WebGL_doCompile from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_doLink() {
    unimplemented!("_WebGL_doLink from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_getAttributeInfo() {
    unimplemented!("_WebGL_getAttributeInfo from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_doBindAttribute() {
    unimplemented!("_WebGL_doBindAttribute from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_doBindSetup() {
    unimplemented!("_WebGL_doBindSetup from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_makeIndexedBuffer() {
    unimplemented!("_WebGL_makeIndexedBuffer from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_getProgID() {
    unimplemented!("_WebGL_getProgID from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_createUniformSetters() {
    unimplemented!("_WebGL_createUniformSetters from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_setUniforms() {
    unimplemented!("_WebGL_setUniforms from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_render() {
    unimplemented!("_WebGL_render from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_diff() {
    unimplemented!("_WebGL_diff from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_guid() {
    unimplemented!("_WebGL_guid from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_rAF() {
    unimplemented!("_WebGL_rAF from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_entity() {
    unimplemented!("_WebGL_entity from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableBlend() {
    unimplemented!("_WebGL_enableBlend from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableDepthTest() {
    unimplemented!("_WebGL_enableDepthTest from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableStencilTest() {
    unimplemented!("_WebGL_enableStencilTest from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableScissor() {
    unimplemented!("_WebGL_enableScissor from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableColorMask() {
    unimplemented!("_WebGL_enableColorMask from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableCullFace() {
    unimplemented!("_WebGL_enableCullFace from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enablePolygonOffset() {
    unimplemented!("_WebGL_enablePolygonOffset from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableSampleCoverage() {
    unimplemented!("_WebGL_enableSampleCoverage from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableSampleAlphaToCoverage() {
    unimplemented!("_WebGL_enableSampleAlphaToCoverage from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableBlend() {
    unimplemented!("_WebGL_disableBlend from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableDepthTest() {
    unimplemented!("_WebGL_disableDepthTest from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableStencilTest() {
    unimplemented!("_WebGL_disableStencilTest from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableScissor() {
    unimplemented!("_WebGL_disableScissor from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableColorMask() {
    unimplemented!("_WebGL_disableColorMask from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableCullFace() {
    unimplemented!("_WebGL_disableCullFace from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disablePolygonOffset() {
    unimplemented!("_WebGL_disablePolygonOffset from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableSampleCoverage() {
    unimplemented!("_WebGL_disableSampleCoverage from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableSampleAlphaToCoverage() {
    unimplemented!("_WebGL_disableSampleAlphaToCoverage from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_settings() {
    unimplemented!("_WebGL_settings from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_disableFunctions() {
    unimplemented!("_WebGL_disableFunctions from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_drawGL() {
    unimplemented!("_WebGL_drawGL from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_toHtml() {
    unimplemented!("_WebGL_toHtml from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableAlpha() {
    unimplemented!("_WebGL_enableAlpha from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableDepth() {
    unimplemented!("_WebGL_enableDepth from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableStencil() {
    unimplemented!("_WebGL_enableStencil from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableAntialias() {
    unimplemented!("_WebGL_enableAntialias from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enableClearColor() {
    unimplemented!("_WebGL_enableClearColor from WebGL.js");
}

#[allow(non_snake_case)]
pub fn _WebGL_enablePreserveDrawingBuffer() {
    unimplemented!("_WebGL_enablePreserveDrawingBuffer from WebGL.js");
}
