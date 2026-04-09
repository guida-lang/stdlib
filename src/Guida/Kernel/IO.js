/*

import Guida.Kernel.Filesystem exposing (fs)
import Guida.Kernel.Readline exposing (rl)
import Guida.Kernel.Scheduler exposing (binding, succeed)
import Guida.Kernel.Utils exposing (Tuple0)

*/

var _IO_withFile = F2(function (path, mode) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.open(path, mode, (err, fd) => {
            if (err) throw err;
            callback(__Scheduler_succeed(fd));
        });
    });
});

function _IO_hClose(fd) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.close(fd, (err) => {
            if (err) throw err;
            callback(__Scheduler_succeed(__Utils_Tuple0));
        });
    });
}

function _IO_hFileSize(fd) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.fstat(fd, (err, stats) => {
            if (err) throw err;
            callback(__Scheduler_succeed(stats.size));
        });
    });
}

var _IO_hPutStr = F2(function (fd, str) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.write(fd, str, (err) => {
            if (err) throw err;
            callback(__Scheduler_succeed(__Utils_Tuple0));
        });
    });
});

function _IO_getLine() {
    return __Scheduler_binding(function (callback) {
        __Readline_rl.on("line", (value) => {
            callback(__Scheduler_succeed(value));
        });
    });
}