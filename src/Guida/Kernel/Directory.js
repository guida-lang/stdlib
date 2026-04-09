/*

import Guida.Kernel.Filesystem exposing (fs)
import Guida.Kernel.List exposing (fromArray)
import Guida.Kernel.Scheduler exposing (binding, succeed)
import Guida.Kernel.Utils exposing (Tuple0)
import Maybe exposing (Just, Nothing)

*/

const os = require("node:os");
const resolve = require("node:path").resolve;
const which = require("which");

var _Directory_createDirectoryIfMissing = F2(function (parents, dir) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.mkdir(dir, { recursive: parents }, (err) => {
            if (err) throw err;
            callback(__Scheduler_succeed(__Utils_Tuple0));
        });
    });
});

function _Directory_removeDirectoryRecursive(dir) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.rm(dir, { recursive: true, force: true }, (err) => {
            if (err) throw err;
            callback(__Scheduler_succeed(__Utils_Tuple0));
        });
    });
}

function _Directory_listDirectory(dir) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.readdir(dir, { recursive: false }, (err, files) => {
            if (err) throw err;
            callback(__Scheduler_succeed(__List_fromArray(files)));
        });
    });
}

function _Directory_getCurrentDirectory() {
    return __Scheduler_binding(function (callback) {
        callback(__Scheduler_succeed(process.cwd()));
    });
}

function _Directory_setCurrentDirectory(dir) {
    return __Scheduler_binding(function (callback) {
        try {
            process.chdir(dir);
            callback(__Scheduler_succeed(__Utils_Tuple0));
        } catch (err) {
            console.error(`chdir: ${err}`);
        }
    });
}

function _Directory_getAppUserDataDirectory(appName) {
    return __Scheduler_binding(function (callback) {
        callback(__Scheduler_succeed(`${os.homedir()}/.${appName}`));
    });
}

function _Directory_removeFile(file) {
    return __Scheduler_binding(function (callback) {
        fs.unlink(file, (err) => {
            if (err) throw err;
            callback(__Scheduler_succeed(__Utils_Tuple0));
        });
    });
}

function _Directory_canonicalizePath(path) {
    return __Scheduler_binding(function (callback) {
        callback(__Scheduler_succeed(resolve(path)));
    });
}

function _Directory_doesFileExist(filename) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.stat(filename, (err, stats) => {
            callback(__Scheduler_succeed(!err && stats.isFile()));
        });
    });
}

function _Directory_doesDirectoryExist(path) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.stat(path, (err, stats) => {
            callback(__Scheduler_succeed(!err && stats.isDirectory()));
        });
    });
}

function _Directory_findExecutable(filename) {
    return __Scheduler_binding(function (callback) {
        const path = which.sync(filename, { nothrow: true });
        callback(__Scheduler_succeed(path ? __Maybe_Just(path) : __Maybe_Nothing));
    });
}

function _Directory_getModificationTime(filename) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.stat(filename, (err, stats) => {
            if (err) throw err;
            callback(__Scheduler_succeed(parseInt(stats.mtimeMs, 10)));
        });
    });
}

function _Directory_getDirname() {
    return __Scheduler_binding(function (callback) {
        callback(__Scheduler_succeed(__dirname));
    });
}