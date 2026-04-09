/*

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

            fs.createReadStream(path)
                .on("data", (chunk) => {
                    processes[nextCounter].stdin.write(chunk);
                })
                .on("close", () => {
                    processes[nextCounter].stdin.end();
                });

            processes[nextCounter] = child_process.spawn(cmd, args, { stdio: [stdin, stdout, stderr,] });
            callback(__Scheduler_succeed(__Utils_Tuple2(fd, nextCounter)));
        });
    });
});

function _SystemProcess_waitForProcess(ph) {
    return __Scheduler_binding(function (callback) {
        processes[ph].on("exit", (code) => {
            callback(__Scheduler_succeed(code));
        });
    });
}