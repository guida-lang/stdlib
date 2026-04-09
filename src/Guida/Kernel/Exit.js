/*

import Basics exposing (never)
import Guida.Kernel.Readline exposing (rl)
import Guida.Kernel.Scheduler exposing (binding, succeed, fail)
import Task exposing (perform)

*/

function _Exit_exitWith(code) {
    return A2(__Task_perform, __Basics_never, __Scheduler_binding(function () {
        __Readline_rl.close();
        process.exit(code);
    }));
}