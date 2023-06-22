import { WebPlugin } from '@capacitor/core';
export class BrazeCapacitorWeb extends WebPlugin {
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
//# sourceMappingURL=web.js.map