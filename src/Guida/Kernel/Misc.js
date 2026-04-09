/*

import Guida.Kernel.Filesystem exposing (fs)
import Guida.Kernel.List exposing (fromArray)
import Guida.Kernel.Readline exposing (rl)
import Guida.Kernel.Scheduler exposing (binding, succeed)
import Guida.Kernel.Utils exposing (Tuple0, Tuple2)
import Maybe exposing (Just, Nothing)

*/

const http = require("node:http");
const https = require("node:https");
const crypto = require("node:crypto");
const AdmZip = require("adm-zip");

var _Misc_writeString = F2(function (path, data) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.writeFile(path, data, (err) => {
            if (err) throw err;
            callback(__Scheduler_succeed(__Utils_Tuple0));
        });
    });
});

function _Misc_readString(path) {
    return __Scheduler_binding(function (callback) {
        __Filesystem_fs.readFile(path, (err, data) => {
            if (err) throw err;
            callback(__Scheduler_succeed(data.toString()));
        });
    });
}

function _Misc_replGetInputLine(prompt) {
    return __Scheduler_binding(function (callback) {
        __Readline_rl.question(prompt, (value) => {
            callback(__Scheduler_succeed(value ? __Maybe_Just(value) : __Maybe_Nothing));
        });
    });
}

const download = function (method, url) {
    const client = url.startsWith("https://") ? https : http;

    const req = client.request(url, { method }, (res) => {
        if (res.statusCode >= 200 && res.statusCode < 300) {
            let chunks = [];

            res.on("data", (chunk) => {
                chunks.push(chunk);
            });

            res.on("end", () => {
                const buffer = Buffer.concat(chunks);
                const zip = new AdmZip(buffer);

                const sha = crypto.createHash("sha1").update(buffer).digest("hex");

                const archive = zip.getEntries().map(function (entry) {
                    return {
                        eRelativePath: entry.entryName,
                        eData: zip.readAsText(entry),
                    };
                });

                this.send({ sha, archive });
            });
        } else if (res.headers.location) {
            download.apply(this, [method, res.headers.location]);
        }
    });

    req.on("error", (e) => {
        console.error(e);
    });

    req.end();
};

function _Misc_getArchive(url) {
    return __Scheduler_binding(function (callback) {
        download.apply({
            send: ({ sha, archive }) => {
                callback(__Scheduler_succeed(__Utils_Tuple2(sha, __List_fromArray(archive.map(function (entry) {
                    return __Utils_Tuple2(entry.eRelativePath, entry.eData);
                })))));
            }
        }, ["GET", url]);
    });
}

var _Misc_httpUpload = F3(function (urlStr, headers, parts) {
    return __Scheduler_binding(function (callback) {
        const url = new URL(urlStr);
        const client = url.protocol == "https:" ? https : http;

        const form = new FormData();

        parts.forEach((part) => {
            switch (part.type) {
                case "FilePart":
                    form.append(part.name, fs.createReadStream(part.filePath));
                    break;

                case "JsonPart":
                    form.append(part.name, JSON.stringify(part.value), {
                        contentType: "application/json",
                        filepath: part.filePath,
                    });
                    break;

                case "StringPart":
                    form.append(part.name, part.string);
                    break;
            }
        });

        const req = client.request(url, {
            method: "POST",
            headers: { ...headers, ...form.getHeaders() },
        });

        form.pipe(req);

        req.on("response", (res) => {
            res.on("data", () => { });

            res.on("end", () => {
                callback(__Scheduler_succeed(__Utils_Tuple0));
            });
        });

        req.on("error", (err) => {
            throw err;
        });
    });
});