/*

import Guida.Kernel.Filesystem exposing (fs)
import Guida.Kernel.List exposing (toArray)
import Guida.Kernel.Scheduler exposing (binding, succeed)
import Guida.Kernel.Utils exposing (Tuple0, Tuple2)

*/

const child_process = require("node:child_process");
const tmp = require("tmp");

let nextCounter = 0;
const processes = {};

var _SystemProcess_withCreateProcess = F5(function (cmd, args, stdin, stdout, stderr) {
    return __Scheduler_binding(function (callback) {
        tmp.file((err, path, fd) => {
            if (err) throw err;

            nextCounter += 1;

            __Filesystem_fs.createReadStream(path)
                .on("data", (chunk) => {
                    processes[nextCounter].stdin.write(chunk);
                })
                .on("close", () => {
                    processes[nextCounter].stdin.end();
                });

            processes[nextCounter] = child_process.spawn(cmd, __List_toArray(args), {
                stdio: [stdStreamToString(stdin), stdStreamToString(stdout), stdStreamToString(stderr)]
            });

            callback(__Scheduler_succeed(__Utils_Tuple2(fd, nextCounter)));
        });
    });
});

function stdStreamToString(stdStream) {
    switch (stdStream.$) {
        case "Inherit":
            return "inherit";

        case "CreatePipe":
            return "pipe";

        case "NoStream":
            return "ignore";
    }
}

function _SystemProcess_waitForProcess(ph) {
    return __Scheduler_binding(function (callback) {
        processes[ph].on("exit", (code) => {
            callback(__Scheduler_succeed(code));
        });
    });
}