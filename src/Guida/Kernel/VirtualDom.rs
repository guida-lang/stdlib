/*

import Basics exposing (identity)
import Guida.Kernel.Debug exposing (crash)
import Guida.Kernel.Json exposing (equality, runHelp, unwrap, wrap)
import Guida.Kernel.List exposing (Cons, Nil)
import Guida.Kernel.Utils exposing (Tuple2)
import Guida.Kernel.Platform exposing (export)
import Json.Decode as Json exposing (map, map2, succeed)
import Result exposing (isOk)
import VirtualDom exposing (toHandlerInt)

*/

// AUTO-GENERATED RUST KERNEL SKELETON
// Source: src/Guida/Kernel/VirtualDom.js
// NOTE: Top-level JS kernel imports/comments are preserved below.

// Detected kernel symbols: _VirtualDom_appendChild, _VirtualDom_text, _VirtualDom_custom, _VirtualDom_thunk, _VirtualDom_noScript, _VirtualDom_noOnOrFormAction, _VirtualDom_noInnerHtmlOrFormAction, _VirtualDom_noJavaScriptUri, _VirtualDom_noJavaScriptOrHtmlUri, _VirtualDom_noJavaScriptOrHtmlJson, _VirtualDom_mapHandler, _VirtualDom_organizeFacts, _VirtualDom_addClass, _VirtualDom_render, _VirtualDom_applyFacts, _VirtualDom_applyStyles, _VirtualDom_applyAttrs, _VirtualDom_applyAttrsNS, _VirtualDom_applyEvents, _VirtualDom_makeCallback, _VirtualDom_equalEvents, _VirtualDom_diff, _VirtualDom_pushPatch, _VirtualDom_diffHelp, _VirtualDom_pairwiseRefEqual, _VirtualDom_diffNodes, _VirtualDom_diffFacts, _VirtualDom_diffKids, _VirtualDom_diffKeyedKids, _VirtualDom_insertNode, _VirtualDom_removeNode, _VirtualDom_addDomNodes, _VirtualDom_addDomNodesHelp, _VirtualDom_applyPatches, _VirtualDom_applyPatchesHelp, _VirtualDom_applyPatch, _VirtualDom_applyPatchRedraw, _VirtualDom_applyPatchReorder, _VirtualDom_applyPatchReorderEndInsertsHelp, _VirtualDom_virtualize, _VirtualDom_dekey, _VirtualDom_doc, _VirtualDom_init, _VirtualDom_nodeNS, _VirtualDom_node, _VirtualDom_keyedNodeNS, _VirtualDom_keyedNode, _VirtualDom_map, _VirtualDom_lazy, _VirtualDom_lazy2, _VirtualDom_lazy3, _VirtualDom_lazy4, _VirtualDom_lazy5, _VirtualDom_lazy6, _VirtualDom_lazy7, _VirtualDom_lazy8, _VirtualDom_on, _VirtualDom_style, _VirtualDom_property, _VirtualDom_attribute, _VirtualDom_attributeNS, _VirtualDom_RE_script, _VirtualDom_RE_on_formAction, _VirtualDom_RE_js, _VirtualDom_RE_js_html, _VirtualDom_mapAttribute, _VirtualDom_mapEventTuple, _VirtualDom_mapEventRecord, _VirtualDom_POSTFIX

#[allow(non_snake_case)]
pub fn _VirtualDom_appendChild() {
    unimplemented!("_VirtualDom_appendChild from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_text() {
    unimplemented!("_VirtualDom_text from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_custom() {
    unimplemented!("_VirtualDom_custom from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_thunk() {
    unimplemented!("_VirtualDom_thunk from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_noScript() {
    unimplemented!("_VirtualDom_noScript from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_noOnOrFormAction() {
    unimplemented!("_VirtualDom_noOnOrFormAction from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_noInnerHtmlOrFormAction() {
    unimplemented!("_VirtualDom_noInnerHtmlOrFormAction from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_noJavaScriptUri() {
    unimplemented!("_VirtualDom_noJavaScriptUri from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_noJavaScriptOrHtmlUri() {
    unimplemented!("_VirtualDom_noJavaScriptOrHtmlUri from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_noJavaScriptOrHtmlJson() {
    unimplemented!("_VirtualDom_noJavaScriptOrHtmlJson from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_mapHandler() {
    unimplemented!("_VirtualDom_mapHandler from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_organizeFacts() {
    unimplemented!("_VirtualDom_organizeFacts from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_addClass() {
    unimplemented!("_VirtualDom_addClass from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_render() {
    unimplemented!("_VirtualDom_render from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyFacts() {
    unimplemented!("_VirtualDom_applyFacts from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyStyles() {
    unimplemented!("_VirtualDom_applyStyles from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyAttrs() {
    unimplemented!("_VirtualDom_applyAttrs from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyAttrsNS() {
    unimplemented!("_VirtualDom_applyAttrsNS from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyEvents() {
    unimplemented!("_VirtualDom_applyEvents from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_makeCallback() {
    unimplemented!("_VirtualDom_makeCallback from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_equalEvents() {
    unimplemented!("_VirtualDom_equalEvents from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_diff() {
    unimplemented!("_VirtualDom_diff from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_pushPatch() {
    unimplemented!("_VirtualDom_pushPatch from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_diffHelp() {
    unimplemented!("_VirtualDom_diffHelp from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_pairwiseRefEqual() {
    unimplemented!("_VirtualDom_pairwiseRefEqual from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_diffNodes() {
    unimplemented!("_VirtualDom_diffNodes from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_diffFacts() {
    unimplemented!("_VirtualDom_diffFacts from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_diffKids() {
    unimplemented!("_VirtualDom_diffKids from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_diffKeyedKids() {
    unimplemented!("_VirtualDom_diffKeyedKids from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_insertNode() {
    unimplemented!("_VirtualDom_insertNode from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_removeNode() {
    unimplemented!("_VirtualDom_removeNode from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_addDomNodes() {
    unimplemented!("_VirtualDom_addDomNodes from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_addDomNodesHelp() {
    unimplemented!("_VirtualDom_addDomNodesHelp from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyPatches() {
    unimplemented!("_VirtualDom_applyPatches from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyPatchesHelp() {
    unimplemented!("_VirtualDom_applyPatchesHelp from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyPatch() {
    unimplemented!("_VirtualDom_applyPatch from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyPatchRedraw() {
    unimplemented!("_VirtualDom_applyPatchRedraw from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyPatchReorder() {
    unimplemented!("_VirtualDom_applyPatchReorder from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_applyPatchReorderEndInsertsHelp() {
    unimplemented!("_VirtualDom_applyPatchReorderEndInsertsHelp from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_virtualize() {
    unimplemented!("_VirtualDom_virtualize from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_dekey() {
    unimplemented!("_VirtualDom_dekey from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_doc() {
    unimplemented!("_VirtualDom_doc from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_init() {
    unimplemented!("_VirtualDom_init from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_nodeNS() {
    unimplemented!("_VirtualDom_nodeNS from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_node() {
    unimplemented!("_VirtualDom_node from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_keyedNodeNS() {
    unimplemented!("_VirtualDom_keyedNodeNS from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_keyedNode() {
    unimplemented!("_VirtualDom_keyedNode from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_map() {
    unimplemented!("_VirtualDom_map from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy() {
    unimplemented!("_VirtualDom_lazy from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy2() {
    unimplemented!("_VirtualDom_lazy2 from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy3() {
    unimplemented!("_VirtualDom_lazy3 from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy4() {
    unimplemented!("_VirtualDom_lazy4 from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy5() {
    unimplemented!("_VirtualDom_lazy5 from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy6() {
    unimplemented!("_VirtualDom_lazy6 from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy7() {
    unimplemented!("_VirtualDom_lazy7 from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_lazy8() {
    unimplemented!("_VirtualDom_lazy8 from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_on() {
    unimplemented!("_VirtualDom_on from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_style() {
    unimplemented!("_VirtualDom_style from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_property() {
    unimplemented!("_VirtualDom_property from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_attribute() {
    unimplemented!("_VirtualDom_attribute from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_attributeNS() {
    unimplemented!("_VirtualDom_attributeNS from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_RE_script() {
    unimplemented!("_VirtualDom_RE_script from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_RE_on_formAction() {
    unimplemented!("_VirtualDom_RE_on_formAction from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_RE_js() {
    unimplemented!("_VirtualDom_RE_js from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_RE_js_html() {
    unimplemented!("_VirtualDom_RE_js_html from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_mapAttribute() {
    unimplemented!("_VirtualDom_mapAttribute from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_mapEventTuple() {
    unimplemented!("_VirtualDom_mapEventTuple from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_mapEventRecord() {
    unimplemented!("_VirtualDom_mapEventRecord from VirtualDom.js");
}

#[allow(non_snake_case)]
pub fn _VirtualDom_POSTFIX() {
    unimplemented!("_VirtualDom_POSTFIX from VirtualDom.js");
}
