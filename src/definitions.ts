export interface BrazeCapacitorPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  initIt(key: string): Promise<{results: any[]}>;
  sendJSON(options: { key: string, value: any }): Promise<{ value: string }>;
}
