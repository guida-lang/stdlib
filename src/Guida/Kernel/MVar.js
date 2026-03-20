/*

import Guida.Kernel.Scheduler exposing (binding, succeed)

*/

var _MVar_counter = 0;
var _MVar_mVars = {};

function _MVar_readMVar(id) {
	return __Scheduler_binding(function (callback) {
		if (typeof _MVar_mVars[id].value === "undefined") {
			_MVar_mVars[id].subscribers.push({ action: "read", callback });
		} else {
			callback(__Scheduler_succeed(_MVar_mVars[id].value));
		}
	});
}

function _MVar_takeMVar(id) {
	return __Scheduler_binding(function (callback) {
		if (typeof _MVar_mVars[id].value === "undefined") {
			_MVar_mVars[id].subscribers.push({ action: "take", callback });
		} else {
			const value = _MVar_mVars[id].value;
			_MVar_mVars[id].value = undefined;

			if (
				_MVar_mVars[id].subscribers.length > 0 &&
				_MVar_mVars[id].subscribers[0].action === "put"
			) {
				const subscriber = _MVar_mVars[id].subscribers.shift();
				_MVar_mVars[id].value = subscriber.value;
				callback(__Scheduler_succeed(__Utils_Tuple0));
			} else {
				callback(__Scheduler_succeed(value));
			}
		}
	});
}

var _MVar_putMVar = F2(function (id, value) {
	return __Scheduler_binding(function (callback) {
		if (typeof _MVar_mVars[id].value === "undefined") {
			_MVar_mVars[id].value = value;

			_MVar_mVars[id].subscribers = _MVar_mVars[id].subscribers.filter((subscriber) => {
				if (subscriber.action === "read") {
					subscriber.callback(__Scheduler_succeed(value));
				}

				return subscriber.action !== "read";
			});

			const subscriber = _MVar_mVars[id].subscribers.shift();

			if (subscriber) {
				subscriber.callback(__Scheduler_succeed(value));

				if (subscriber.action === "take") {
					_MVar_mVars[id].value = undefined;
				}
			}

			callback(__Scheduler_succeed(__Utils_Tuple0));
		} else {
			_MVar_mVars[id].subscribers.push({ action: "put", callback, value });
		}
	});
});

function _MVar_newEmptyMVar(mvar) {
	return __Scheduler_binding(function (callback) {
		_MVar_counter += 1;
		_MVar_mVars[_MVar_counter] = { subscribers: [], value: undefined };
		callback(__Scheduler_succeed(mvar(_MVar_counter)));
	});
}