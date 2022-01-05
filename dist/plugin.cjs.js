'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var core = require('@capacitor/core');

const BrazeCapacitor = core.registerPlugin('BrazeCapacitor', {
    web: () => Promise.resolve().then(function () { return web; }).then(m => new m.BrazeCapacitorWeb()),
});

class BrazeCapacitorWeb extends core.WebPlugin {
    async echo(options) {
        console.log('ECHO', options);
        return options;
    }
    async initIt(key) {
        console.log('web initIt', key);
        return {
            results: [{}]
        };
    }
    async login(email) {
        console.log('web login', email);
        return {
            results: [{}]
        };
    }
    async logout(email) {
        console.log('web logout', email);
        return {
            results: [{}]
        };
    }
}

var web = /*#__PURE__*/Object.freeze({
    __proto__: null,
    BrazeCapacitorWeb: BrazeCapacitorWeb
});

exports.BrazeCapacitor = BrazeCapacitor;
//# sourceMappingURL=plugin.cjs.js.map
