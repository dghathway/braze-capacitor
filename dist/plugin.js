var capacitorBrazeCapacitor = (function (exports, core) {
    'use strict';

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
        async sendJSON(options) {
            console.log('web sendJSON', options);
            return { value: "not implemented on web" };
        }
    }

    var web = /*#__PURE__*/Object.freeze({
        __proto__: null,
        BrazeCapacitorWeb: BrazeCapacitorWeb
    });

    exports.BrazeCapacitor = BrazeCapacitor;

    Object.defineProperty(exports, '__esModule', { value: true });

    return exports;

})({}, capacitorExports);
//# sourceMappingURL=plugin.js.map
