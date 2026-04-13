import { WebPlugin } from '@capacitor/core';

import type { DeviceInfoPlugin } from './definitions';

export class DeviceInfoWeb extends WebPlugin implements DeviceInfoPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }

  async getLocaleInfo(): Promise<{
    language: string;
    country: string;
    currency: string;
    identifier: string;
  }> {
    const locale = navigator.language || 'en-US';
    const [language, country] = locale.split('-');

    return {
      language: language ?? 'en',
      country: country ?? 'US',
      currency: 'USD',
      identifier: locale,
    };
  }

  async getInfo(): Promise<{
    language: string;
    country: string;
    currency: string;
    identifier: string;
  }> {
    return this.getLocaleInfo();
  }
}
