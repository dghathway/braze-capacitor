import { WebPlugin } from '@capacitor/core';

import type { BrazeCapacitorPlugin } from './definitions';

export class BrazeCapacitorWeb
  extends WebPlugin
  implements BrazeCapacitorPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
  
  async initIt(key: string): Promise<{ results: any[] }> {
    console.log('web initIt', key);
    return {
      results: [{}]
    };
  }
  async sendJSON(options: { key:string, value: any }): Promise<{ value: string }> {
    console.log('web sendJSON', options);
    return {value: "not implemented on web"};
  }
}