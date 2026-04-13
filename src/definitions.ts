export interface DeviceInfoPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  getLocaleInfo(): Promise<{
    language: string;
    country: string;
    currency: string;
    identifier: string;
  }>;
  getInfo(): Promise<{
    language: string;
    country: string;
    currency: string;
    identifier: string;
  }>;
}
