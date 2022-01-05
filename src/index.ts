import { registerPlugin } from '@capacitor/core';

import type { BrazeCapacitorPlugin } from './definitions';

const BrazeCapacitor = registerPlugin<BrazeCapacitorPlugin>('BrazeCapacitor', {
  web: () => import('./web').then(m => new m.BrazeCapacitorWeb()),
});

export * from './definitions';
export { BrazeCapacitor };
