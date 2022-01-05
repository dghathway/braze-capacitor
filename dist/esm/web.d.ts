import { WebPlugin } from '@capacitor/core';
import type { BrazeCapacitorPlugin } from './definitions';
export declare class BrazeCapacitorWeb extends WebPlugin implements BrazeCapacitorPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    initIt(key: string): Promise<{
        results: any[];
    }>;
    login(email: string): Promise<{
        results: any[];
    }>;
    logout(email: string): Promise<{
        results: any[];
    }>;
}
