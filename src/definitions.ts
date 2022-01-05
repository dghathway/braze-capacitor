export interface BrazeCapacitorPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  initIt(key: string): Promise<{results: any[]}>;
  login(email: string): Promise<{results: any[]}>;
  logout(email: string): Promise<{results: any[]}>;
}
