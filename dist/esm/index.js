import { registerPlugin } from '@capacitor/core';
const BrazeCapacitor = registerPlugin('BrazeCapacitor', {
    web: () => import('./web').then(m => new m.BrazeCapacitorWeb()),
});
export * from './definitions';
export { BrazeCapacitor };
//# sourceMappingURL=index.js.map