export interface DeviceInfoPlugin {
  getInfo(): Promise<{
    language: string;
    country: string;
    currency: string;
    identifier: string;
  }>;
}