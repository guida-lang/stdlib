/*

import Guida.Kernel.List exposing (fromArray)
import Guida.Kernel.Scheduler exposing (binding, succeed)
import Maybe exposing (Just, Nothing)

*/

function _Environment_getArgs() {
    return __Scheduler_binding(function (callback) {
        callback(__Scheduler_succeed(__List_fromArray(process.argv.slice(2))));
    });
}

function _Environment_getProgName() {
    return __Scheduler_binding(function (callback) {
        callback(__Scheduler_succeed(path.basename(__filename)));
    });
}

function _Environment_lookupEnv(name) {
    return __Scheduler_binding(function (callback) {
        callback(__Scheduler_succeed(process.env[name] ? __Maybe_Just(process.env[name]) : __Maybe_Nothing));
    });
}