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
//# sourceMappingURL=web.js.map